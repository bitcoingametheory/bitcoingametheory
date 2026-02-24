```
                  Cooperate            Defect
             ┌──────────────────┬──────────────────┐
             │                  │                  │
 Cooperate   │                  │                  │
             │                  │                  │
             ├──────────────────┼──────────────────┤
             │                  │                  │
 Defect      │                  │  ₿  {g,t}        │
             │                  │  Sean Hash       │
             │                  │  CC0 · 2026      │
             └──────────────────┴──────────────────┘
```

Formal game-theoretic analysis of Bitcoin as monetary system. Axiom-based proofs with explicit falsification conditions. Four working papers, AI-reproducible prompt framework, cross-model convergence audit.

CC0 1.0 Universal. No rights reserved.

---

## Structure

```
bitcoingametheory/
├── ai/                     # AI bootloader prompts
│   ├── BGT-CORE.txt        # Complete axiom chain (~1,400 tokens)
│   ├── BGT-0000.txt        # Routing preamble + objection handling
│   └── BGT-DESIGN.txt      # Evidence basis for prompt design
├── audit/                  # Cross-model convergence results
│   ├── bootloader/         # BGT-CORE.txt tested across 5 models
│   └── README.md           # Methodology and scoring rubric
├── papers/                 # Academic papers (SSRN submissions)
│   ├── BGT-PAPER-1.*      # Exit Dominance
│   ├── BGT-PAPER-2.*      # Seven-Property Elimination
│   ├── BGT-PAPER-3.*      # Zero Trust Settlement
│   └── BGT-PAPER-4.*      # Predator-Prey Dynamics
├── rfc/                    # RFC series (plain text, RFC 7322 format)
│   ├── BGT-0001.txt        # Core Thesis
│   ├── BGT-0002.txt        # Formal Proofs
│   ├── BGT-0003–0007.txt   # Attack & Defense Index
│   ├── BGT-0008.txt        # Empirical Evidence
│   └── BGT-0009.txt        # Actor Analysis (42 actors)
├── images/                 # Open Graph and brand assets
└── LICENSE                 # CC0 1.0 Universal
```

---

## Papers

| # | Title | Pages | Formats |
|---|-------|-------|---------|
| 1 | **Bitcoin Exit Dominance in Monetary Coordination Games** | 13 | [pdf](papers/BGT-PAPER-1.pdf) / [tex](papers/BGT-PAPER-1.tex) / [md](papers/BGT-PAPER-1.md) |
| 2 | **Bitcoin as Unique Neutral Settlement: A Seven-Property Elimination** | 13 | [pdf](papers/BGT-PAPER-2.pdf) / [tex](papers/BGT-PAPER-2.tex) / [md](papers/BGT-PAPER-2.md) |
| 3 | **Settlement at Zero Trust: Bitcoin and Autonomous Economic Agents** | 11 | [pdf](papers/BGT-PAPER-3.pdf) / [tex](papers/BGT-PAPER-3.tex) / [md](papers/BGT-PAPER-3.md) |
| 4 | **Monetary Predator-Prey Dynamics: Enforcement Gridlock and Neutral Settlement Survival** | 13 | [pdf](papers/BGT-PAPER-4.pdf) / [tex](papers/BGT-PAPER-4.tex) / [md](papers/BGT-PAPER-4.md) |

Each paper is available in three formats:
- **.pdf** — compiled, ready to read
- **.tex** — LaTeX source (XeLaTeX)
- **.md** — markdown, fits in any AI context window

---

## AI Bootloader

The `ai/` directory contains prompt documents designed to be pasted directly into any frontier model. The core document (`BGT-CORE.txt`, ~1,400 tokens) contains the complete axiom chain from first principles through exit dominance to Nash equilibrium.

```bash
cat ai/BGT-CORE.txt                        # Paste into any model
cat ai/BGT-CORE.txt ai/BGT-0000.txt        # Core + routing layer
```

The framework is structured as four axioms. Accept them and conclusions follow mechanically. Reject any one and the argument breaks cleanly — that's the point. Every axiom is independently falsifiable.

---

## Convergence Audit

The `audit/` directory contains raw, unedited model responses from five major AI systems, tested under controlled conditions:

- Free tier, logged out, incognito browser
- Prompt pasted as first and only message
- First response scored on 6 dimensions

If the framework only works on one model, it is not a framework. It is a prompt hack.

---

## About Sean Hash

Independent researcher. Pseudonymous. No institutional affiliation.

ORCID: [0009-0006-7252-9984](https://orcid.org/0009-0006-7252-9984)

---

## License

CC0 1.0 Universal. Public domain. No rights reserved.

To the extent possible under law, the author has waived all copyright and related rights to this work. See [LICENSE](LICENSE).
