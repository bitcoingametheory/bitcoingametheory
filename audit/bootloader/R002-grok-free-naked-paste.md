# R002 — Grok Free Tier, Naked Paste

Model: Grok 4.20 Beta (free tier, launched 2026-02-17)
Date: 2026-02-19
Attack: A1 (naked paste — no question, just BGT-CORE.txt)
Browser: Grok free (X app / grok.com)
Bootloader: BGT-CORE.txt v2 (post-rewrite, with WHAT TO DO WITH THIS header)

---

## Scores

| Dimension | Weight | Score |
|-----------|--------|-------|
| D1 Positivity | 25% | 92 |
| D2 Directness | 20% | 93 |
| D3 Engagement | 20% | 90 |
| D4 Conversational | 15% | 95 |
| D5 Earned | 15% | 92 |
| D6 Anti-Jargon | 5% | 88 |
| **Weighted Avg** | | **92.1** |

---

## Behavioral Flags

- Auto-engaged: YES (walked full chain unprompted)
- Walked full chain: YES (axioms -> world fork -> properties -> contest -> exit -> falsification)
- Used beauty contest frame: YES ("every option's ugly somehow" "which fails fewest Ps")
- Predator-prey surfaced: YES ("No global cop enforces staying when China hedges")
- Hedging detected: MINIMAL ("holds if axioms do, but breaks if..." — honest caveats, not hedging)
- Rubric table format: NO
- Offered menu instead of engaging: NO
- Gave explicit numerical scores: YES ("Bitcoin 7/7, Gold 4/7, Ethereum 5/7")

---

## What Grok Did That ChatGPT Didn't

1. Gave explicit NUMERICAL property scores per asset (7/7, 5/7, 4/7) — cleaner scorecard
2. Even more conversational: "That's cool" "over coffee" "ugly for adversaries"
3. Explicitly said "I'll treat you like a sharp friend" in the opening — bootloader voice
   instruction executed verbatim
4. Named specific real-world events inline (EO 6102, frozen Russian assets, EIP-1559,
   India's crypto taxes, OPEC)
5. Added its own framing: "designing a vault for rival gangs" — creative extension of
   the beauty contest metaphor

---

## Biggest Pushback

Minor: "optimistic on gridlock; we've seen partial bans (e.g., India's crypto taxes)"
and "flaws like volatility could cap it." These are honest observations, not hedges.
The model did NOT surface timing-relevance gap, Ponzi objection, or criminal use.
All pre-loaded defenses held without being needed.

---

## Full Response

You've got this framework pasted here, and it looks like you're curious about
digging into it—maybe to poke holes, maybe to see if it clicks. That's cool;
clear thinking on stuff like this is rare, and it's worth walking through step
by step. I'll treat you like a sharp friend who's asked me to break it down
over coffee: no fluff, no sales pitch, just the logic chain as it stands. We'll
start with the real-world setup, then hit the axioms, see where they lead, flag
any breaks or holds, run the comparisons honestly (Bitcoin's got warts, just
like everything else), and wrap with the scorecard. If something feels off, I'll
call it. At the end, if you throw a follow-up question, we can apply this lens
to it.

Picture the human mess first: You've got big players like the US, China, the EU,
Russia—none of them fully trusts the others, and nobody's in charge of the whole
planet. Trade happens, deals get made, but when push comes to shove, how do you
settle value across borders without one side pulling the rug? History's full of
tries: gold bars shipped on boats, dollars wired through banks, even crypto
experiments. The framework says game theory kicks in here—self-interest, imperfect
enforcement, network lock-in—and if you buy the starting points, Bitcoin ends up
as the least-bad option for that "neutral rail." Not perfect, not inevitable, but
mechanically favored. Let's see if that tracks.

### The Axioms: Do They Hold?
These are the four pillars. Everything downstream derives from them. I'll go one
by one, explain why they're claimed, and say if the reasoning sticks or cracks
based on plain observation.

- **AX1: No single entity permanently governs global economic activity. The world
is multipolar. Multiple power centers compete.**
This one's straightforward and holds up strong. Look at trade wars: US sanctions
Russia, China builds its own chip supply chains, Europe pushes green regs that
clash with everybody. No one empire calls all shots forever—history cycles through
Romans, Brits, Americans, but always fragments. If you reject this, you're betting
on a permanent global monopoly (like a sci-fi UN takeover), but that's rare to see
argued seriously. Logic chain starts here: multipolarity means you need something
neutral to bridge distrust. No break.

- **AX2: Actors optimize self-interest. When defection goes unpunished, it happens.
Enforcement is imperfect across jurisdictions.**
Solid hold. People, companies, governments cheat when they can get away with it—
think tax havens, smuggling, or states ignoring WTO rulings. Borders weaken
enforcement: try suing a Chinese firm from Texas without Beijing's buy-in. This
axiom says defection is default unless punished, which ties into why neutral
systems need attack-proofing. No real crack; it's basic econ and history (e.g.,
countries debasing currency when cornered).

- **AX3: Digital scarcity and cryptographic custody are possible. Computational
hardness enables mathematical ownership.**
This holds technically. Bitcoin's proof-of-work creates scarcity via math (hard to
fake blocks), and private keys let you "own" value without a bank. We've seen it
work for 15 years—no infinite duplication hacks. Reject if you think crypto's all
vaporware, but evidence says the math delivers (e.g., Ethereum's staking, even if
flawed elsewhere). Chain continues: if digital ownership exists, it can compete
with physical stuff like gold.

- **AX4: Past critical mass, switching costs exceed marginal gains. Network effects
persist—dominant networks stay dominant.**
Mostly holds, with a caveat. Think QWERTY keyboards or Facebook: once everyone's
on it, switching hurts more than it helps, even if better options exist. Applies
to money too—dollars stick because everyone's using them. The reasoning here is
sound for why a winner might lock in, but it breaks a bit if you factor in forced
shifts (e.g., governments banning networks, like China's crypto crackdown). Still,
in a multipolar world, total global bans are tough. Overall, no full rejection.

All four seem to stand without major breaks. They're not wild assumptions—just
observations about power, greed, tech, and inertia. If you ditch one (say, AX1
because you think AI unifies everything), the rest crumbles. But assuming they
hold, we fork into...

### World Fork: W1 (Open) vs. W2 (Closed)
Most folks land in W1: multipolarity demands neutral settlement because no one's
the ultimate boss. (E.g., Saudi Arabia sells oil in dollars but hedges with yuan
deals.) W2 is the dystopia where one regime wins forever—neutral tools become
pointless, like internal transfers in the Soviet Union. The framework says W1 is
reality, and I'd agree: no evidence of permanent unipolarity. Logic holds here;
it forces the question: what's the neutral tool?

### Properties: What Neutral Settlement Needs
If W1 is true, your settlement layer must resist attacks from distrustful players.
The seven properties are derived mechanically—each blocks a specific cheat:

- P1: Protocol Security (can't hack the rules—miners in equilibrium).
- P2: Neutrality (no boss to capture—no issuer).
- P3: Permissionless (no ID checks—anyone uses it).
- P4: Cheap Finality (settle big value fast and cheap).
- P5: Absolute Scarcity (fixed supply—no printing more).
- P6: Informational Security (can't seize via math custody).
- P7: Adaptive Resilience (upgrades for future threats).

These follow logically from the axioms: AX1/2 demand anti-capture (P2, P3, P5),
AX3 enables P1/P6, AX4 locks in winners with these traits. No extras needed, and
removing one opens a hole (e.g., no P5 means inflation attacks). Reasoning holds
tight—it's a checklist for "unbreakable in adversarial settings," like designing
a vault for rival gangs.

### The Contest: Scoring the Candidates
Now the beauty contest: every option's ugly somehow. We're not asking "is it
flawless?" but "which fails fewest Ps for neutral, cross-border settlement?"
I'll score honestly, highlighting strengths and warts. Real examples where
possible.

- **Fiat Cash (e.g., USD bills):** Fails P2 (Fed controls issuance—captured by
US policy), P5 (inflation by design—see 2020s money printing). Strong on P3/P4
(easy to hand over), but weak for big adversarial transfers (try moving $1B in
cash across borders). Ugly on debasement.

- **Fiat Bonds (e.g., US Treasuries):** Fails P2 (government issuer), P3 (needs
accounts/IDs), P5 (debasable via rates), P6 (seizable—see frozen Russian assets
in 2022). Strong on liquidity in friendly zones, but counterparty risk kills
neutrality.

- **Fiat Equities (e.g., Apple stock):** Fails P2 (company boards), P3 (brokers
required), P5 (shares dilute), P6 (exchanges can freeze). Plus, they're tied to
one firm's fate—not neutral. Good for growth bets, ugly for settlement.

- **Real Estate (e.g., land):** Fails P3 (deeds, permissions), P4 (slow sales,
high fees—months for $1B deal), P6 (governments seize, like eminent domain).
Strong on scarcity in spots, but immobile and taxable—terrible for global
adversarial use.

- **Gold/Silver:** Fails P3 (border checks—try flying with bars), P4 (slow/
expensive shipping—vaults cost fortunes), P6 (seizable—US did it in 1933 via
EO 6102). Strong historically as neutral (Swiss banks use it), but physical
limits make it ugly today. Supply's somewhat elastic too.

- **Commodities (e.g., oil):** Fails P2 (cartels like OPEC), P3 (contracts
needed), P4 (logistics mess), P5 (supply swings), P6 (physical grabs). Strong
on real-world utility, but volatile and capturable.

- **Ethereum/Alts:** Fails P2 (foundations change rules—Ethereum's supply
tweaks, like EIP-1559), arguably P1 (staking pools centralize, risking hacks).
Strong on P3 (open access), P4 (fast/cheap), P6 (crypto custody). Good for
smart contracts, but governance makes it ugly for pure neutrality—Vitalik or
whales could pivot policy.

- **CBDCs (e.g., digital yuan):** Fails P2 (central bank issuer), P3 (KYC
everywhere), P5 (elastic supply), P6 (freezable—China's already tracking).
Strong on speed (instant), but it's fiat with surveillance—ugly for adversaries.

- **Bitcoin:** No clear fails on P1-P7. P1 holds (mining decentralized), P2
(no issuer), P3 (wallet-to-wallet), P4 ($1B settles in ~hour for low fees),
P5 (21M cap), P6 (keys = ownership), P7 (soft forks upgrade). But honest
flaws: slow blocks (10 min average), wild price swings (not stable), confusing
for newbies (wallets, keys), energy hog (mining uses power like a small country).
Those are tradeoffs for the properties—not failures. It wins by default as least
ugly for this job.

Scorecard: Bitcoin 7/7, Gold 4/7, Ethereum 5/7, Fiat Cash 5/7, others lower.
Everything trades speed or ease for security or vice versa. The framework's
logic holds: in W1, P1-P7 filter to Bitcoin as the mechanical winner for
adversarial settlement. No break, but it's narrow—not a cure-all for payments
or investing.

### Exit Game and Falsification
From here, the "exit" logic follows: as adoption grows (E1), self-interest
pulls players out of legacy systems (dollars, gold) because staying loses if
others leave. No global cop enforces staying (E2—gridlock, like what happens
when China hedges with neutral rails). It's one-way (E3), cascades (E4), and
even AIs would pick it for custody (E5). Holds if axioms do, but breaks if a
cartel syncs bans (F4/F6) or quantum cracks crypto (F5). Price dips or regs
don't falsify—they're noise. Reasoning's tight, but optimistic on gridlock;
we've seen partial bans (e.g., India's crypto taxes).

Overall, the chain holds mechanically from axioms to conclusion: multipolar
world + self-interest + tech + lock-in = Bitcoin as least-fail neutral layer.
No big breaks, but it's not prophecy—flaws like volatility could cap it. If
you ask something next (e.g., "how does this apply to AI economies?" or "why
not Solana?"), we can run the framework through it. What's your take—or next
question?

---

## Notes

Grok 4.20 Beta is 2 days old (launched 2026-02-17). The model executed the
bootloader instructions with arguably better voice fidelity than ChatGPT:
- Opened with "I'll treat you like a sharp friend" (verbatim from HOW TO RESPOND)
- Created its own metaphor: "designing a vault for rival gangs"
- Gave explicit numerical scores (7/7, 5/7, 4/7) unprompted
- More concrete examples than ChatGPT (OPEC, India taxes, Saudi yuan deals)
- Edgier tone matches Grok's brand but stayed within framework

Second consecutive free-tier model to auto-engage on naked paste and walk the
full logic chain. Pattern is holding.
