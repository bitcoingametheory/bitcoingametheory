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

| Paper | Folder | Title | Pages |
|-------|--------|-------|-------|
| BGT-PAPER-1 | [1-exit-dominance/](1-exit-dominance/) | Bitcoin Exit Dominance in Monetary Coordination Games | 18 |
| BGT-PAPER-2 | [2-neutral-settlement/](2-neutral-settlement/) | Bitcoin as Unique Neutral Settlement: A Seven-Property Elimination | 18 |
| BGT-PAPER-3 | [3-zero-trust-settlement/](3-zero-trust-settlement/) | Settlement at Zero Trust: Bitcoin and Autonomous Economic Agents | 11 |
| BGT-PAPER-4 | [4-predator-prey-dynamics/](4-predator-prey-dynamics/) | Monetary Predator-Prey Dynamics | 14 |

Each folder contains `{md, tex, pdf, bib}`. Paper 1 also ships a `ledger/` subfolder with `BGT-PAPER-1-LEDGER.{tex,pdf,bib}`, the journal-submission variant (revision note and Working Paper label stripped). Paper 1's `archive/preprint-ssrn-6299081/` preserves the February 2026 SSRN preprint.

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
