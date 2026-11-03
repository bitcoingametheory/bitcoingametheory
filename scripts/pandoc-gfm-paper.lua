-- pandoc-gfm-paper.lua
-- Unwraps amsthm-style environment Divs so the GFM writer emits plain blocks.
-- pandoc's LaTeX reader already renders the numbered bold lead-in
-- ("**Theorem 1** (Name). *statement*", "*Proof.* ... QED") inside the Div;
-- only the ::: fenced-div wrapper is unrenderable by remark-gfm. Drop it.
local UNWRAP = {
  theorem = true, proof = true, proposition = true, definition = true,
  assumption = true, corollary = true, lemma = true, remark = true,
}

-- Pandoc reads a LaTeX abstract into metadata. GFM has no template that
-- prints that metadata, so explicitly retain it after the title block.
function Pandoc(doc)
  if doc.meta.abstract then
    local position = 1
    if doc.blocks[1] and doc.blocks[1].t == "Div" then position = 2 end
    for i = #doc.meta.abstract, 1, -1 do
      doc.blocks:insert(position, doc.meta.abstract[i])
    end
    if not pandoc.utils.stringify(doc.meta.abstract):match("^Abstract") then
      doc.blocks:insert(position, pandoc.Header(2, "Abstract"))
    end
  end
  return doc
end

function Div(el)
  for _, cls in ipairs(el.classes) do
    if UNWRAP[cls] then return el.content end
  end
  return nil
end

-- Collapse display math to a single line. pandoc's gfm writer emits $$...$$
-- with the fences inline against the content; a $$ block that spans multiple
-- source lines is mis-parsed by remark-math (micromark only reads single-line
-- $$...$$ as math), which desyncs the parser and dumps the rest of the
-- document as raw text (C1094-followup). TeX ignores source newlines, so
-- flattening to one line is lossless and makes every block parse as math.
function Math(el)
  if el.mathtype == "DisplayMath" then
    el.text = el.text:gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
    return el
  end
end

-- Strip the proof QED glyph. pandoc's LaTeX reader appends U+00A0 + U+25FB
-- (nbsp + white medium square) to every \begin{proof}; the .tex sets
-- \qedsymbol empty, so the PDF shows nothing. Drop it from the derived .md
-- so the website render matches the PDF. Only the nbsp bound to the square
-- is removed; the legitimate non-breaking ties (Theorem 1, Assumption 3)
-- live in other Str tokens and are untouched.
function Str(el)
  if el.text:find("\u{25FB}", 1, true) then
    local t = el.text:gsub("\u{00A0}\u{25FB}", ""):gsub("\u{25FB}", "")
    if t == "" then return {} end
    el.text = t
    return el
  end
end
