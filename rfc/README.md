# rfc/

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

RFC series. Plain text, RFC 7322 format. Citation tag = filename.

---

### Normative

| Document | Title |
|----------|-------|
| [BGT-0001](BGT-0001.txt) | Core Thesis: axioms, properties, exit game, falsification |
| [BGT-0002](BGT-0002.txt) | Formal Proofs: mathematical inequalities |
| [BGT-0003](BGT-0003.txt) | Attack Index: every structural attack mapped |
| [BGT-0004](BGT-0004.txt) | Protocol Defenses |
| [BGT-0005](BGT-0005.txt) | State Defenses |
| [BGT-0006](BGT-0006.txt) | Capture Defenses |
| [BGT-0007](BGT-0007.txt) | Asset Defenses |

### Informative

| Document | Title |
|----------|-------|
| [BGT-0008](BGT-0008.txt) | Empirical Evidence: data and citations |
| [BGT-0009](BGT-0009.txt) | Actor Analysis: 42-actor incentive model |

### Reference

| Document | Title |
|----------|-------|
| [BGT-AUTHOR](BGT-AUTHOR.txt) | Author's note |
| [BGT-DISPUTE](BGT-DISPUTE.txt) | Formal dispute protocol |
| [BGT-FAQ](BGT-FAQ.txt) | Frequently asked questions |
| [BGT-GLOSS](BGT-GLOSS.txt) | Glossary of terms |

---

## Reading Order

BGT-0001 (thesis) > BGT-0002 (proofs) > BGT-0003 (attacks) >
BGT-0004 through BGT-0007 (defenses) > BGT-0008 (evidence) >
BGT-0009 (actors)

```bash
cat rfc/BGT-0001.txt              # Start here
grep -rn "\[BGT-0003\]" rfc/      # Trace any citation
```

---

[Back to root](../)
