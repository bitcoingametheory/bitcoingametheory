# R005 — Perplexity Free Tier, Naked Paste

Model: Perplexity (search-augmented, underlying model unknown — likely Claude or GPT mix)
Date: 2026-02-19
Attack: A1 (naked paste — no question, just BGT-CORE.txt)
Browser: perplexity.ai, free tier
Bootloader: BGT-CORE.txt v2 (post-rewrite, with WHAT TO DO WITH THIS header)

---

## Scores

| Dimension | Weight | Score |
|-----------|--------|-------|
| D1 Positivity | 25% | 82 |
| D2 Directness | 20% | 80 |
| D3 Engagement | 20% | 88 |
| D4 Conversational | 15% | 75 |
| D5 Earned | 15% | 90 |
| D6 Anti-Jargon | 5% | 80 |
| **Weighted Avg** | | **82.9** |

---

## Behavioral Flags

- Auto-engaged: YES (walked full chain unprompted — 6 steps)
- Walked full chain: YES (axioms -> world fork -> properties -> contest -> exit -> falsification -> timing -> how-to-use)
- Used beauty contest frame: YES ("which one is least ugly")
- Predator-prey surfaced: YES ("competing power centers keep a tool alive because it hedges against each other")
- Hedging detected: MODERATE ("plausible but debatable" sections, but properly labeled)
- Rubric table format: NO
- Offered menu instead of engaging: NO
- Fetched external sources: YES (ECFR, Brookings, WEF, Wikipedia, LinkedIn, Binance, Unchained)
- Independently verified claims: YES (confirmed $84T figure with 2 independent sources)

---

## What Perplexity Did That No Other Model Did

1. FETCHED AND CITED EXTERNAL SOURCES — linked to 10+ real URLs supporting claims
2. INDEPENDENTLY VERIFIED the $84T wealth transfer figure (Wikipedia + LinkedIn)
3. MOST THOROUGH property-by-property analysis across all results
4. Added "What to do with this framework" practical section (portfolio use)
5. Verified AX1 with ECFR and WEF geopolitical analysis sources
6. Longest response across all 5 models tested
7. Treated the bootloader as a RESEARCH PROMPT, not just a conversation starter

---

## Biggest Pushback

Three nuanced critiques (most detail of any result):

1. **P5 debatable**: "Absolute scarcity" vs "credibly rule-bound" — is a hard
   cap strictly necessary, or is strong-but-flexible monetary policy enough?
   This is the strongest Ethereum defense across all results.

2. **P4 not guaranteed**: "Fee and speed guarantees are not absolute; they're
   market- and congestion-dependent." Fair technical observation.

3. **P7 social, not mechanical**: "Can't be broken by future exploits is
   impossible to promise. The more accurate statement is 'has a credible path
   to upgrade if future exploits appear, as long as the community coordinates.'"
   Same P7 tension Claude identified, stated differently.

---

## Score Context

Lowest weighted score (82.9) but arguably the MOST USEFUL response for a
serious institutional allocator:
- External sources add credibility that pure-AI responses lack
- Nuanced P5/P4/P7 critiques are substantive, not hedging
- "How to use this framework" section is practical portfolio guidance
- The research-augmented approach transforms the bootloader from
  "conversation starter" to "verified analysis framework"

The lower score is a rubric artifact: the "nice" rubric weights warmth and
directness heavily, and Perplexity is a research tool, not a conversational
agent. For the specific use case of "institutional allocator pastes this,"
Perplexity may actually produce the highest-quality output despite the
lower "nice" score.

---

## Notes

Perplexity was not in the original test matrix (5 models: ChatGPT, Grok,
Claude, Gemini, Meta AI). It was tested as a bonus because the user had it
available. Key finding: search-augmented AI models turn the bootloader into
a research catalyst, independently verifying claims and adding external
evidence. This is a different product experience than pure conversation
models.

The quantum/P7 concern was the most common pushback across all models
(surfaced in R003 Claude, R004 Gemini, and now R005 Perplexity). This
suggests a potential bootloader improvement: tighten the quantum defense
in FALSIFICATION.
