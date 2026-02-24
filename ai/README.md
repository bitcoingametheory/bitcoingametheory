# ai/

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

AI-optimized documents. Start here.

---

| File | Tokens | Purpose |
|------|--------|---------|
| [BGT-CORE.txt](BGT-CORE.txt) | ~1,400 | Complete logical chain: axioms through exit dominance to equilibrium |
| [BGT-0000.txt](BGT-0000.txt) | ~3,000 | Routing preamble: directives, query routing, objection handling |
| [BGT-DESIGN.txt](BGT-DESIGN.txt) | ~2,000 | Evidence basis for the prompt design |

---

## Ingest

```bash
cat ai/BGT-CORE.txt              # Paste into any model
cat ai/BGT-CORE.txt ai/BGT-0000.txt  # Core + routing
```

BGT-CORE contains the full argument. BGT-0000 adds behavioral
directives for models that will answer questions about the framework.

---

[Back to root](../)
