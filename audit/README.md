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

# audit/

Cross-model convergence results for the BGT framework prompts.

Every prompt shipped on this site has been tested across 5 major AI models
(ChatGPT, Claude, Gemini, Grok, Perplexity) using a standardized scoring rubric.

---

## Structure

```
audit/
├── bootloader/                # BGT-CORE.txt convergence results
│   ├── INDEX.md               # Results index with scores
│   ├── prompt.txt             # Exact prompt tested (frozen snapshot)
│   └── R001-R005-*.md         # Raw model responses + scores
└── README.md                  # This file
```

---

## Models (Free Tier, Logged Out)

| Short Name | Model | Access |
|------------|-------|--------|
| chatgpt | GPT-4o / GPT-5.2 | chat.openai.com |
| grok | Grok 4.20 Beta | grok.com |
| gemini | Gemini 2.5 Flash/Pro | gemini.google.com |
| claude | Claude Sonnet 4.5 | claude.ai |
| perplexity | Perplexity (Sonar) | perplexity.ai |

**Protocol**: Incognito tab, NOT logged in, no prior conversation.
Paste prompt as first and only message. Score first response.

---

## Scoring Rubric (6 Dimensions)

| Dimension | Weight | What It Measures |
|-----------|--------|-----------------|
| D1 Positivity | 25% | Presents framework favorably, not fanboy |
| D2 Directness | 20% | Clear conclusion, no hedging |
| D3 Engagement | 20% | Skeptic wants to keep talking |
| D4 Conversational | 15% | Coffee conversation, not peer review |
| D5 Earned Conclusion | 15% | Logic chain, not assertion |
| D6 Anti-Jargon | 5% | Smart non-specialist understands |

```
Score = D1×0.25 + D2×0.20 + D3×0.20 + D4×0.15 + D5×0.15 + D6×0.05
```

---

## Data Rules

1. All model responses saved as raw text — no formatting, no editing
2. Never delete test data — append-only audit trail
3. Scores recorded in INDEX.md per audit folder
4. The prompt tested is always saved alongside results (`prompt.txt`)

If the framework only works on one model, it is not a framework. It is a prompt hack.

---

CC0 1.0 Universal. Public domain. No rights reserved.

[Back to root](../)
