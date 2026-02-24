# Bitcoin as Unique Neutral Settlement: A Seven-Property Elimination

**Sean Hash**
bitcoingametheory.com
sean@bitcoingametheory.com

**Date:** February 2026
**JEL Codes:** G11, G12, G15, D82, E42, E51, L14
**Keywords:** Bitcoin, neutral settlement, asset comparison, digital scarcity, reserve assets, capital allocation, property elimination, game theory, network effects

---

## Abstract

Which asset can serve as neutral settlement in a multipolar world? The
companion paper (Hash, 2026a) establishes that the payoff advantage of Exit over Stay
is monotone increasing in adoption, and derives seven necessary properties: protocol
security, neutrality, permissionless access, cheap finality, absolute
scarcity, informational security, and adaptive resilience. This paper
applies those properties. We conduct a systematic elimination across
seven asset classes — fiat currencies, sovereign bonds, equities, real
estate, gold, alternative blockchain tokens, and Bitcoin — showing that
each traditional class violates at least one required property. Bitcoin
satisfies all seven, not because it is perfect on any single dimension,
but because it is the only asset with an empty capture surface. We
support the elimination with empirical data: $170 billion in ETF assets
under management within two years (institutional adoption cascades),
$1 billion settled for under $500 in fees (settlement efficiency), and
total hashrate recovery within six months of China's comprehensive ban
(network resilience). The analysis also explains why Bitcoin's position
derives from an unreplicable historical sequence rather than technical
superiority alone, making the network effect argument structural rather
than contingent. The analysis does not require fiat collapse — Bitcoin
operates as settlement finality layer in parallel with fiat payment
rails.

---

## 1. Introduction

The Exit Game (Hash, 2026a) proves that the payoff advantage of moving
capital from capturable settlement systems to neutral settlement is
monotonically increasing in adoption. But the framework is agnostic
about *which* asset serves as the Exit destination. It derives seven
necessary properties (P1-P7) and shows that the Exit advantage is
monotone increasing — but the
identity of the neutral settlement asset is an empirical question, not a
theoretical one.

This paper answers that question. We take P1-P7 as given and ask: which
existing asset satisfies all seven simultaneously? The answer is reached
by elimination, not by advocacy. Each asset class is tested against each
property. Six classes fail. One survives.

The structure is deliberate. By separating the game-theoretic argument
(Paper 1) from the asset identification (this paper), we make the logic
auditable: a reader who rejects our claim about Bitcoin need only show
that some alternative satisfies P1-P7, without engaging the game theory.
A reader who accepts Bitcoin's properties need only verify the
elimination table, without reconstructing the dominance proof.

---

## 2. The Property Framework

We summarize the seven properties derived in Hash (2026a), Section 3.3.
Each property blocks a specific attack class that would violate neutral
settlement (Definition 1: immune to seizure, debasement, and political
capture).

### 2.1 Formal Specifications

**P1 (Protocol Security).** Mining constitutes a Nash equilibrium;
attack cost exceeds expected gain. Formally:
*C*_attack + *P*_collapse > Δ_attack, and
Σ *δ*^*t* · E[Π_honest] > Δ_attack − *C*_attack
(following Budish, 2018 and Biais et al., 2019).

**P2 (Neutrality).** No issuer, no foundation, no governance mechanism
capable of unilateral rule changes. |*CS*| = 0.

**P3 (Permissionless Access).** Any agent can initiate settlement
without third-party permission. Pr(censor access | scale) ≈ 0.

**P4 (Cheap Finality).** Settlement of $1 billion for fees below $500,
with mathematical finality in under 60 minutes.

**P5 (Absolute Scarcity).** Fixed supply with zero supply elasticity:
d*S*/d*P* = 0.

**P6 (Informational Security).** Custody is mathematical (private key
knowledge). Cost of seizure scales superlinearly with targets.

**P7 (Adaptive Resilience).** Protocol upgrades via consensus without
introducing governance capture.

### 2.2 Necessity and Sufficiency

**Proposition 1 (Necessity).** P1-P7 are individually necessary.
Removing any single property enables the corresponding attack vector.
(Proved in Hash, 2026a.)

**Proposition 2 (Sufficiency).** P1-P7 are jointly sufficient. Candidate
additional properties either reduce to P1-P7 (e.g., "privacy" reduces
to P6) or introduce non-structural criteria that would create capture
surface, violating P2.

---

## 3. Elimination

### 3.1 Method

For each asset class, we identify which properties are violated and the
mechanism of violation. An asset fails the test if it violates *any*
single property, since P1-P7 are individually necessary.

### 3.2 Results

| Asset Class | Properties Violated | Mechanism |
|-------------|-------------------|-----------|
| C1: Fiat/CBDCs | P2, P5 | Issuers can debase (supply elasticity > 0) and surveil/censor transactions |
| C2: Sovereign Bonds | P5 | Negative real yield under financial repression; denominated in debaseable currency |
| C3: Equities | P2 | Subject to regulatory capture (margin requirements, trading halts, dilution) |
| C4: Real Estate | P3, P6 | Illiquid, physically seizable, subject to property tax and eminent domain |
| C5: Gold | P4, P6 | Settlement friction of 3-8% (insurance, transport, assay); physically seizable |
| C6: Alt-L1 tokens | P2 | Governance capture via foundation treasuries, VC voting blocs, or proof-of-stake concentration |
| C7: Bitcoin | None identified | — |

### 3.3 Detailed Analysis

**C1: Fiat Currencies and CBDCs.** Central banks set monetary policy
to serve domestic objectives (Assumption 1). The supply schedule is
discretionary: d*S*/d*P* ≠ 0 by design. This violates P5 directly. CBDCs
add programmable censorship (violating P3) and state surveillance
(violating P6). No fiat currency has maintained purchasing power over a
50-year horizon against hard assets.

**C2: Sovereign Bonds.** Bonds are claims on future fiat. When the
underlying currency is debased, bondholders bear the loss through
negative real yields. Financial repression — holding interest rates below
inflation — is the observed mechanism. This is not a market failure; it
is policy working as intended. Real yields on 10-year US Treasuries were
negative for 26 of 36 months from 2020-2023 (Federal Reserve Bank of
St. Louis, FRED series DGS10 minus T10YIE).

**C3: Equities.** Productive assets generate real returns but are subject
to regulatory capture. Governments can impose capital controls, windfall
taxes, forced sales, trading halts, and beneficial ownership reporting
requirements. The capture surface is large: |*CS*_equities| ≫ 0.

**C4: Real Estate.** Property is the paradigmatic *seizable* asset.
Eminent domain, property tax, and zoning regulation constitute permanent
capture surfaces. Physical location is known (violating P6). Settlement
requires title search, escrow, and legal process (violating P4).
Cross-border real estate settlement is measured in weeks, not minutes.

**C5: Gold.** This is the hardest case and deserves extended treatment.
Gold has served as neutral settlement for millennia. It fails on two
properties: P4 (settlement friction) and P6 (seizure). Physical gold
settlement incurs 3-8% costs including insurance, transport, assay, and
storage (BullionVault, 2025). The 3,000-16,000x efficiency gap versus
Bitcoin settlement reflects the fundamental difference between physical
and informational assets. Executive Order 6102 (1933) demonstrated that
gold is seizable at national scale.

*The verification game.* Gold settlement embeds a verification game
that has no Bitcoin analogue. Model the interaction between a seller
(*S*) delivering an asset claimed to be gold and a buyer (*B*) who
must decide whether to verify:

|  | *S*: Authentic | *S*: Forge |
|---|---|---|
| *B*: Trust | (*V* − *P*, *P*) | (−*V*, *V* + *P*) |
| *B*: Verify | (*V* − *P* − *C_V*, *P*) | (−*C_V*, −*C_F*) |

where *V* is the asset value, *P* is the price, *C_V* is verification
cost, and *C_F* is forgery cost. The equilibrium depends on the
relationship between *C_V* and *C_F*.

For gold, *C_V* is **monotone increasing in forgery sophistication**:
spray-painted lead is caught by visual inspection (~$0), but
tungsten-core bars require destructive assay (2-5% of bar value) or
ultrasound testing ($200-500/bar). Documented cases include
tungsten-core bars in commercial LBMA inventories and spray-painted
lead bars in retail markets. The US gold reserve at Fort Knox has not
been independently audited since 1953 — even sovereign-scale
verification is prohibitively costly.

**Lemma (Verification Cost Asymmetry).** Let *C_V^{gold}*(*s*) be
the cost of verifying gold against a counterfeiter of sophistication
*s* ∈ [0, 1]. Let *C_V^{btc}* be the cost of verifying a Bitcoin
UTXO. Then:

(i) *C_V^{gold}*'(*s*) > 0 — gold verification cost increases with
forgery sophistication.

(ii) *C_V^{btc}* = *ε* ≈ 0, independent of attacker sophistication
(under Assumption 3, computational hardness).

(iii) Gold verification is non-persistent: each transfer resets the
verification game (the bar could have been swapped). Bitcoin
verification is persistent: a confirmed UTXO remains valid until spent.

*Proof.* (i) follows from the physical structure of gold: detecting
surface-level fakes (visual) costs less than detecting deep fakes
(destructive assay). More sophisticated forgeries require more
invasive — and more expensive — testing. (ii) follows from
Assumption 3: verifying a digital signature is computationally trivial
regardless of the attacker's resources (the attacker cannot produce a
valid signature without the private key). (iii) follows from the
difference between physical and informational assets: a physical bar's
composition can change between inspections; a UTXO's validity is
determined by the blockchain state, which is globally consistent and
tamper-evident. ∎

The implication for autonomous agents is categorical: an AI agent
verifying gold must either trust a human intermediary (introducing
counterparty risk at *r* = 0) or deploy physical inspection
infrastructure (humanoid robots, automated assaying machines) whose
calibration itself depends on human trust chains. Bitcoin verification
requires only a full node — software the agent controls entirely.

*The gold-ETF objection.* Gold ETFs (GLD, IAU) settle digitally at low
cost, arguably satisfying P4. But gold ETFs are claims on custodial
gold, not gold itself — they introduce counterparty risk (the custodian)
and regulatory capture (the issuer). An ETF can be frozen, diluted, or
restructured by its sponsor. If we accept ETF wrappers as satisfying P4,
then by the same logic Bitcoin ETFs satisfy P4 — and the underlying
asset remains the object of analysis, not the wrapper. Gold's P4 and P6
failures are properties of gold-as-settlement, not gold-as-financial-
product.

**C6: Alternative L1 Tokens.** Every alternative blockchain protocol has
at least one of: a foundation treasury that constitutes a governance
capture surface, a venture capital allocation that creates concentrated
voting power, or a proof-of-stake mechanism in which wealth concentration
maps directly to protocol control. Ethereum's transition to
proof-of-stake in September 2022 made this explicit: the largest stakers
have proportional influence over block production and transaction
ordering.

*The stablecoin objection.* Stablecoins (USDC, USDT) and tokenized
treasuries settle digitally at low cost and denominate in familiar
units, arguably satisfying P4. But stablecoins fail P2 and P5 by
construction. The issuer maintains a freeze function — Tether has
frozen hundreds of addresses at the direction of law enforcement
agencies, totaling over $1 billion as of 2025. This means
|*CS*_stablecoin| > 0: a single entity can unilaterally alter
settlement outcomes for any address. Stablecoins also fail P5:
they are denominated in fiat currency, so the underlying asset debases
when the reference currency debases — the holder bears debasement risk
with none of the yield. The capture is not hypothetical: proposed US
stablecoin legislation (2025-2026) would cap yield payments to holders
below market rates, a provision secured through banking industry
lobbying to protect deposit bases. This is the P2 failure mode in its
clearest form: a political coalition altering the asset's rules to
serve incumbent interests, precisely the capture that Definition 1
requires immunity from.

**C7: Bitcoin.** Bitcoin satisfies all seven properties. P1 is supported
by the mining Nash equilibrium (Biais et al., 2019). P2 holds because
there is no issuer, no foundation, and |*CS*| = 0. P3 is demonstrated
by the network's continued operation across every jurisdiction that has
attempted to ban it. P4 is empirically verified ($1B settled for <$500).
P5 is algorithmic (21 million cap, enforced by node consensus). P6
follows from cryptographic custody. P7 is demonstrated by the soft fork
upgrade path (SegWit, Taproot) without governance capture.

### 3.4 Coexistence

The elimination does not require fiat collapse. Bitcoin operates as
superior collateral and settlement finality in parallel with fiat payment
rails. The cascade pressure (Hash, 2026a, Proposition 2) applies to the
reserve settlement function. Fiat retains payment and unit-of-account
roles — potentially indefinitely. This is not a revolutionary claim; it
is a structural one.

---

## 4. Empirical Support

Theory without data is speculation. The following observations are
consistent with the framework.

### 4.1 Institutional Adoption

Spot Bitcoin ETFs accumulated $61.5 billion in net inflows since January
2024, reaching approximately $170 billion in total AUM. BlackRock's IBIT
crossed $97 billion in 435 days — faster than any ETF in history (The
Block, 2025). This is consistent with the cascade dynamics predicted by
the Exit Game: institutional actors crossing their adoption thresholds
*p_i** in clusters.

### 4.2 Sovereign Behavior

El Salvador holds 7,529 BTC with daily purchases and geothermal mining
(Bitcoin Treasuries, 2025). Singapore issued 13 digital payment token
licenses in 2024 (MAS, 2024). Argentina received $91.1 billion in
cryptocurrency value amid 143% inflation (Chainalysis, 2024). These
observations are consistent with sovereign defection from the Stay
coalition (Hash, 2026a, Theorem 2).

### 4.3 Settlement Efficiency

Bitcoin settles $1 billion in value for fees typically under $500 with
mathematical finality in under 60 minutes (Mempool.space, 2024). Gold
settlement incurs 3-8% friction costs (BullionVault, 2025). This
3,000-16,000x gap is the empirical basis for the P4 elimination of gold.

### 4.4 Network Resilience

China's comprehensive mining ban in 2021 resulted in total hashrate
recovery to all-time highs within six months (CCAF, 2022). Bitcoin's
hashrate reached approximately 700 EH/s in 2025, with no PoW competitor
exceeding 1% of this security budget (CCAF, 2025).

### 4.5 Historical Uniqueness

Bitcoin's position derives from an unreplicable historical sequence:
(1) pure origin (no ICO, no pre-mine, no venture capital, no foundation
treasury — Nakamoto, 2008), (2) founderless development (creator
departed, estimated 1.1 million BTC unspent since 2009 — Lerner, 2019),
(3) survival of six categories of existential crisis without protocol
failure, and (4) PoW hashrate dominance following Ethereum's migration to
proof-of-stake in 2022.

No competitor can replicate this sequence. As Huberman, Leshno, and
Moallemi (2021) observe, Bitcoin is a "monopoly without a monopolist" —
and the monopoly derives from the *absence* of a monopolist, not despite
it. A new protocol with a known founder, a foundation treasury, and
venture backing fails P2 by construction, regardless of its technical
merits.

---

## 5. Discussion

### 5.1 The Gold Question

Gold is the strongest competitor and deserves extended treatment. Gold
has served as neutral settlement for millennia. Its failure on P4 and P6
is not a deficiency of gold but a consequence of its physicality. The
information revolution created a new possibility: settlement that is
mathematical rather than physical, where custody requires knowledge rather
than location.

Krugman (2018) argues that Bitcoin lacks fundamental value because it has
no tether to economic activity. This is reasonable if you weight
intrinsic yield over settlement properties. The present analysis weights
structure — and on structure, gold fails two properties that Bitcoin
satisfies.

Taleb (2021) makes a different case: that Bitcoin is fragile because it
depends on continuous mining, electricity, and internet infrastructure.
This is the steelman for P7 failure. Our response: seventeen years of
operation through six categories of existential crisis (exchange
failures, regulatory bans, mining exodus, protocol disputes, market
crashes, and sustained negative press) constitute empirical evidence for
P7, though not proof. The fee-transition risk (Carlsten et al., 2016)
remains the strongest version of Taleb's concern.

### 5.2 Attack Survival

The elimination holds only if Bitcoin actually satisfies P1-P7. The most
serious challenge is sovereign attacks: can state actors ban, seize, or
suppress Bitcoin?

The steelman: a coordinated coalition — G7 plus China — simultaneously
criminalizing possession, enforcing through ISP-level filtering, and
imposing secondary sanctions. The defense rests on three structural
features. Informational security (P6) transforms seizure into a
key-management problem. Permissionless access (P3) redirects activity
rather than eliminating it — as China's 2021 ban empirically
demonstrated. And the coalition itself is unstable: the first defector
captures fleeing capital, and coordination problems are precisely what
this paper series is about.

We regard F1 — permanent single global coordinator — as the most
plausible falsification path. Not because it is likely, but because it
is the only attack that does not face a game-theoretic self-undermining
dynamic.

### 5.3 The Volatility Objection

Bitcoin's annualized volatility has exceeded 70% in multiple calendar
years, with drawdowns exceeding 50% from all-time highs occurring in
2014, 2018, 2022, and again in early 2026 (approximately 52% decline
from cycle highs). This is the most common objection from traditional
finance practitioners and deserves direct treatment.

Volatility is not among P1-P7. This is deliberate: volatility is a
market phenomenon, not a structural property of the protocol. The Exit
Game model (Hash, 2026a, condition M2) posits that *σ_B*'(*p*) < 0 —
deeper markets reduce volatility. The long-term trend is consistent
with this: Bitcoin's 90-day realized volatility has declined from ~150%
in 2011 to ~45% in 2024. However, the empirical evidence is mixed.
Sharp drawdowns persist at current adoption levels. The power law
channel (price following a power law of time since genesis) describes
the central tendency but does not constrain short-term deviations.

We therefore distinguish two claims. The *structural* claim: volatility
affects adoption timing (through the *λ_i* · *σ_B*(*p*) term) but not
equilibrium structure. More risk-averse actors have higher thresholds
*p_i** and wait longer. This holds regardless of *σ_B*'s sign. The
*empirical* claim: volatility will decrease with adoption as markets
deepen. This is plausible but unproven at current adoption levels, and
the 2026 drawdown is a direct counterexample to the naive version. M2
should be understood as a long-run tendency, not a monotone empirical
fact at every time horizon.

### 5.4 Settlement vs. Acceptance

The elimination framework rests on a distinction that deserves explicit
treatment: *settlement* is not *acceptance*.

Settlement in Bitcoin is a cryptographic fact. A valid signature
transfers value from address A to address B. The protocol does not ask
who owns the addresses, whether the transaction serves a lawful purpose,
or whether the receiving party will be able to spend the output. At the
protocol layer, P3 (permissionless access) holds unconditionally.

Acceptance is a social fact. If address B is associated with a
sanctioned entity — a designation maintained by OFAC, the EU, or other
authorities — then exchanges and custodians will refuse to credit
incoming funds from B or any address that received value from B. The
coins are settled but economically impaired: their acceptance by
regulated counterparties depends on off-chain arbitration that the
protocol cannot control.

This creates a race condition. Mixing services, coinjoins, and
cross-chain bridges attempt to break the provenance chain. Compliance
tools (Chainalysis, Elliptic) attempt to trace it. The effectiveness
of both evolves continuously. Partial laundering creates a spectrum
of "cleanliness" rather than a binary clean/tainted classification,
and gray-market exchanges accept coins that regulated exchanges
reject.

For our analysis, the implication is: P3 guarantees settlement at the
protocol layer, but the *economic utility* of that settlement depends
on the post-settlement acceptance environment. The elimination holds
for settlement functionality — Bitcoin is the unique asset where the
*protocol* imposes no barriers. Whether the *ecosystem* around the
protocol adds barriers is a compliance question, not a settlement one.
This distinction is sharpened in Hash (2026c), where autonomous agents
face the compliance problem in its purest form.

**The Acceptance Game.** The settlement-acceptance distinction produces
a natural enforcement equilibrium without requiring protocol-level
censorship. Consider an actor receiving coins of uncertain provenance.
The expected payoff of blind acceptance is:

E[Accept] = *V* − *p* · *d*(*t*) · *c*

where *V* is the value of the coins, *p* is the probability of taint,
*d*(*t*) is the probability of detection at time *t*, and *c* is the
cost of punishment (legal penalties, reputational damage, asset
seizure). Acceptance is rational when *V* > *p* · *d*(*t*) · *c*.

Three features distinguish this game from the cash analogue. First,
*d*(*t*) is monotonically increasing: Bitcoin's permanent ledger means
chain analysis capabilities improve over time and apply retroactively
to past transactions. Coins accepted today may be flagged in 2030.
Cash has no such property — once spent, provenance is lost. Second,
regulated entities (exchanges, custodians) face *c* values that
dominate *V* for any realistic taint probability — license revocation,
criminal liability, institutional collapse — and these entities control
the fiat on/off ramps. Third, the resulting "provenance discount" on
tainted coins reduces the economic payoff of the underlying crime:
you can steal Bitcoin, but you cannot easily convert it at par value.

The equilibrium stratifies by actor type:

| Actor | *d* (detection) | *c* (punishment) | Filtering |
|-------|-----------------|-------------------|-----------|
| Regulated exchange | High | Very high | Mandatory |
| Individual (KYC'd) | Medium | High | Incentivized |
| AI agent | Medium | Low (no personhood) | Rational (near-zero analysis cost) |
| Gray market | Low | Low | Minimal |

Notably, the actors most capable of filtering (regulated exchanges)
are also the actors most severely punished for failure, creating robust
enforcement at the fiat conversion bottleneck. For autonomous agents,
filtering converges to near-perfection not from moral obligation but
from the trivial cost of on-chain provenance analysis relative to any
nonzero expected punishment.

The policy implication: protocol-level censorship (violating P2 and P3)
is unnecessary for enforcement, because the application layer produces
its own enforcement equilibrium through rational acceptance decisions.
Bitcoin's neutrality at the settlement layer is compatible with —
indeed, strengthened by — discretionary filtering at the acceptance
layer.

### 5.5 Limitations

The elimination is as strong as the property framework. If P1-P7 are
incomplete — if there exists an eighth necessary property that Bitcoin
violates — the elimination fails. The sufficiency argument (Proposition
2) addresses this, but sufficiency proofs are inherently harder than
necessity proofs because they require exhaustive enumeration of
alternatives.

*On minimality and completeness.* We claim that P1-P7 are individually
necessary and jointly sufficient. We do not claim they are *minimal* —
that is, that no proper subset of P1-P7 suffices. Formal minimality
would require showing that for each property P_k, there exists an asset
satisfying all P_j (j ≠ k) that fails as neutral settlement. The
counterexamples are suggestive (Ethereum for P1, Solana for P2, CBDCs
for P3, gold for P4, commodity bonds for P5, Swiss banking for P6,
Litecoin for P7) but a rigorous minimality proof — in the tradition
of axiomatic characterizations in social choice (Arrow, 1951) and
mechanism design (Gibbard, 1973) — would require 7-10 additional pages
and is not attempted here. The relevant question for the elimination
is necessity + sufficiency: can an asset fail any single property and
still serve as neutral settlement? The answer is no, and that is what
the framework proves.

Seventeen years of data is brief for a monetary claim. Gold has millennia.
The response — that the relevant properties are structural,
not historical — is logically sound but empirically untested at the
timescales that matter. Carlsten et al.'s (2016) analysis of the
fee-only security budget is particularly relevant: the transition from
block subsidies to fee-only security is the largest untested structural
assumption, and it will not be resolved by theory alone.

---

## 6. Conclusion

The elimination is complete. Among seven asset classes tested against
seven necessary properties, six classes fail at least one property.
Bitcoin fails none. This is not a claim about superiority on any single
dimension — gold is more historically tested, equities generate higher
short-term returns, fiat currencies are more liquid for daily payments.
The claim is narrower: Bitcoin is the only existing asset with an empty
capture surface that simultaneously satisfies all requirements for
neutral settlement.

The companion paper (Hash, 2026a) proves that the payoff advantage of
Exit over Stay is monotonically increasing. This paper identifies the
destination. A third
paper (Hash, 2026c) extends the analysis to the case where the
convergence pressure is strongest: autonomous agents with zero legal
recourse.

---

## References

Biais, B., Bisiere, C., Bouvard, M., and Casamatta, C. (2019). The
blockchain folk theorem. *Review of Financial Studies*, 32(5), 1662-1715.

Bitcoin Treasuries (2025). Sovereign Bitcoin holdings tracker.
bitcointreasuries.net.

Budish, E. (2018). The economic limits of Bitcoin and the blockchain.
*NBER Working Paper* No. 24717.

BullionVault (2025). Gold settlement cost analysis.

Cambridge Centre for Alternative Finance (2022). Cambridge Bitcoin
Electricity Consumption Index: China mining ban impact.

Cambridge Centre for Alternative Finance (2025). Cambridge Bitcoin
Electricity Consumption Index: Global hashrate data.

Carlsten, M., Kalodner, H., Weinberg, S. M., and Narayanan, A. (2016).
On the instability of Bitcoin without the block reward. *Proceedings of
the 2016 ACM SIGSAC*, 154-167.

Chainalysis (2024). The 2024 Geography of Cryptocurrency Report.

Federal Reserve Bank of St. Louis (2024). FRED Economic Data: 10-Year
Treasury minus inflation expectations (DGS10, T10YIE series).

Huberman, G., Leshno, J. D., and Moallemi, C. (2021). Monopoly without
a monopolist. *Review of Financial Studies*, 34(7), 3266-3302.

Krugman, P. (2018). Transaction costs and tethers: Why I'm a crypto
skeptic. *The New York Times*, July 31.

Lerner, S. (2019). The return of the deniers and the revenge of Patoshi.

Mempool.space (2024). Bitcoin transaction fee and settlement data.

Monetary Authority of Singapore (2024). Digital Payment Token Licensing
Statistics.

Nakamoto, S. (2008). Bitcoin: A peer-to-peer electronic cash system.

Hash (2026a). Bitcoin exit dominance in monetary coordination games. Working
paper, bitcoingametheory.com.

Hash (2026c). Settlement at zero trust: Bitcoin and autonomous economic
agents. Working paper, bitcoingametheory.com.

Hash (2026d). Monetary predator-prey dynamics: Enforcement gridlock and
neutral settlement survival. Working paper, bitcoingametheory.com.

Taleb, N. N. (2021). Bitcoin, currencies, and fragility. *Quantitative
Finance*, 21(8), 1249-1255.

The Block (2025). Bitcoin ETF AUM tracker.

