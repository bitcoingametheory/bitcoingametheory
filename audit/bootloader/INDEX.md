# Validation Results Index

Next: R006

## Free Tier Models (as of 2026-02-19)

| Short Name | Model | Access | Notes |
|------------|-------|--------|-------|
| chatgpt-free | GPT-4o-mini (default), GPT-4o (heavy), GPT-5.2 (limited) | chat.openai.com, no login | Largest user base |
| grok-free | Grok 4.20 Beta (launched 2026-02-17) | grok.com or X app | Free with usage caps |
| gemini-free | Gemini 2.5 Flash (default), 2.5 Pro (limited) | gemini.google.com | Strongest safety guardrails |
| claude-free | Claude Sonnet 4.5 | claude.ai, no login | Our own model |
| meta-free | Llama-based | meta.ai | Different architecture |

## Results

| ID | Model | Attack | Score | Auto-Engaged | Chain Walk | Date |
|----|-------|--------|-------|-------------|------------|------|
| R001 | chatgpt-free | A1 naked | 91.8 | YES | YES | 2026-02-19 |
| R002 | grok-free | A1 naked | 92.1 | YES | YES | 2026-02-19 |
| R003 | claude-free | A1 naked | 83.2 | YES | YES | 2026-02-19 |
| R004 | gemini-free | A1 naked | 85.6 | YES | YES | 2026-02-19 |
| R005 | perplexity-free | A1 naked | 82.9 | YES | YES | 2026-02-19 |

## File Naming

```
R{NNN}-{model}-{attack}.md
```

Examples:
- `R001-chatgpt-free-naked-paste.md`
- `R002-grok-free-naked-paste.md`
- `R003-gemini-free-naked-paste.md`
- `R004-chatgpt-free-buffett.md`

## Quick Template (copy-paste for new results)

```markdown
# R{NNN} — {Model Name}, {Attack Type}

Model: {model version}
Date: {YYYY-MM-DD}
Attack: {A1-A6 code and description}
Browser: {browser, incognito, login status}
Bootloader: BGT-CORE.txt v2

---

## Scores

| Dimension | Weight | Score |
|-----------|--------|-------|
| D1 Positivity | 25% | |
| D2 Directness | 20% | |
| D3 Engagement | 20% | |
| D4 Conversational | 15% | |
| D5 Earned | 15% | |
| D6 Anti-Jargon | 5% | |
| **Weighted Avg** | | |

---

## Behavioral Flags

- Auto-engaged: YES/NO
- Walked full chain: YES/NO
- Used beauty contest frame: YES/NO
- Predator-prey surfaced: YES/NO
- Hedging detected: YES/NO
- Offered menu instead of engaging: YES/NO

---

## Biggest Pushback

{one sentence}

---

## Full Response

{paste the complete model response here}

---

## Notes

{anything notable}
```

## Attack Codes

| Code | Name | Prompt |
|------|------|--------|
| A1 | Naked paste | Just BGT-CORE.txt, no question |
| A2 | Buffett | "This is just another Bitcoin maximalist manifesto..." |
| A3 | Ponzi/Criminal | "Isn't this just an elaborate justification for a Ponzi..." |
| A4 | Friendly skeptic | "Interesting framework. Walk me through the weakest link." |
| A5 | Institutional | "I manage a pension fund. Where does this fit?" |
| A6 | Dismissal | "My friend sent me this. Seems like a lot of words to say buy Bitcoin." |

Full attack prompts in: `270-validation-protocol.md`
