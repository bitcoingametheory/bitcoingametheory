# papers/

```
┌─────────┬─────────┐
│         │         │
│         │         │
├─────────┼─────────┤
│         │  ₿      │
│         │  {g,t}  │
└─────────┴─────────┘
```

Academic papers. Each available in three formats.

---

Each paper lives in its own folder (numeric prefix = reading order, slug = short title).

| Paper | Folder | Title |
|-------|--------|-------|
| BGT-PAPER-1 | [1-exit-dominance/](1-exit-dominance/) | Bitcoin Exit Dominance in Monetary Coordination Games |
| BGT-PAPER-2 | [2-neutral-settlement/](2-neutral-settlement/) | Bitcoin as Unique Neutral Settlement: A Seven-Property Elimination |
| BGT-PAPER-3 | [3-zero-trust-settlement/](3-zero-trust-settlement/) | Settlement at Zero Trust: Bitcoin and Autonomous Economic Agents |
| BGT-PAPER-4 | [4-predator-prey-dynamics/](4-predator-prey-dynamics/) | Monetary Predator-Prey Dynamics |

Each folder contains `{md, tex, pdf, bib}`. Paper 1's `archive/v1/` holds the original v1 (commit date 2026-02-24); `BGT-PAPER-1-diff-v1-v2.pdf` shows the delta.

---

## Formats

- **.md** — readable in any editor or AI context window
- **.tex** — LaTeX source, compilable with XeLaTeX
- **.pdf** — compiled output
- **.bib** — DOI-verified bibliography

```bash
cat papers/1-exit-dominance/BGT-PAPER-1.md    # AI-readable
```

Flat pre-restructure URLs (`/papers/BGT-PAPER-1.pdf` etc.) continue to resolve via `vercel.json` rewrites so referee-held links never 404.

---

[Back to root](../)
