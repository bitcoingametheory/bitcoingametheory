# Bitcoin Exit Dominance in Monetary Coordination Games

**Sean Hash**
bitcoingametheory.com
sean@bitcoingametheory.com

**Date:** Preprint: February 2026 (SSRN 6299081). Revised: April 2026.
**JEL Codes:** C72, C73, D83, E42, E51, G11, L14
**Keywords:** Bitcoin, game theory, Nash equilibrium, monetary coordination, neutral settlement, absorbing state, coordination failure, threshold strategy, digital scarcity, Schelling point, network effects

---

## Abstract

In a multipolar world with no trusted monetary coordinator, how do
rational actors settle large-value transactions across trust boundaries?
We model this as a non-cooperative game — the "Exit Game" — in which
capital allocators choose between capturable settlement systems ("Stay")
and neutral settlement ("Exit," used throughout for the strategic action defined in-model; distinct from Hirschman's (1970) organizational-decline response, see §2.5). The model rests on four empirical
axioms: persistent multipolarity, rational self-interest, computational
hardness, and network effect persistence. We prove three results.
First, the payoff advantage of Exit over Stay is strictly increasing in
adoption: every term in the payoff differential favors Exit under
maintained monotonicity conditions, and each actor's adoption threshold
approaches zero under structural debasement (Theorem 1). Second, no
coalition can sustain coordinated Stay, because permissionless access
makes defection costless and the first defector captures fleeing capital
(Theorem 2). Third, the resulting equilibrium is absorbing: the monotone
adoption process converges to full adoption once a critical mass is
reached, because trust conditions required for coordinated return cannot
be re-established (Theorem 3). The model is explicitly falsifiable: six conditions are identified under
which the central claims would fail. Bitcoin is the unique asset
satisfying the necessary properties for neutral settlement — a result
proved by systematic elimination across seven asset classes in Hash
(2026b). The analysis is descriptive: we characterize equilibrium
structure without predicting timing, price, or recommending portfolio
allocations.

---

## Revision Note — April 2026

This revision prepares the February 2026 preprint (SSRN 6299081) for journal submission. All revisions sharpen presentation, widen literature engagement, or scope claims more honestly.

Citations previously narrowed to what the source establishes, and paired where a single anchor carried weight that belongs to two, are retained from the February revision: §2.2 (Huberman, Leshno, and Moallemi for congestion pricing only); §2.5 (Hirschman as intellectual context, distinct from strategic Exit in-model); §4.4 (Bikhchandani, Hirshleifer, and Welch as contrast, not analog); §2.3 (Milgrom–Shannon paired with Topkis); §3.1 (David paired with Arthur); §3.4 (Kyle paired with Amihud, Katz–Shapiro paired with Farrell–Saloner).

The threshold-coverage condition previously stated parenthetically in Theorem 3's proof is promoted to Assumption 5. A new monotonicity condition (M6) makes the capturable return *R*_F a function of adoption *p*, consistent with every other quantity in the model; Theorem 1's proof is extended accordingly and is strengthened under strict inequality. Theorem 3's information-structure framing is upgraded from complete-information + common-knowledge to public-information + heterogeneous-priors (following Morris and Shin 1998, Carlsson and van Damme 1993), placing the model in the global-games tradition. Theorem 3's Step 4 is rewritten from Bayesian-updating-over-hidden-types to higher-order-belief coordination breakdown. Utility is stated explicitly as mean-variance in §3.4. The debt-repayment claim in §1 is tightened. The falsification table in §5 is reorganized into axiom falsifiers, theorem falsifiers, and scope conditions.

Three adjacent literatures are now acknowledged: global games (Carlsson and van Damme, 1993; Morris and Shin, 1998) as the standard tool for equilibrium selection in coordination games under incomplete information; self-fulfilling currency crises (Obstfeld, 1986, 1996) as the intellectual ancestor of the coordination-failure mechanism; and search-theoretic money (Kiyotaki and Wright, 1989; Lagos and Wright, 2005) as providing microfoundations this paper does not re-derive. The paper's complete-information modeling choice and equilibrium-selection framing are defended against each.

Section 6 names three scope deferrals: the binary Exit/Stay structure (continuous-allocation extension deferred); deterministic monotone convergence (stochastic stability in the Kandori–Mailath–Rob sense deferred); and Theorem 2's single-defection result (full coalition-proof Nash analysis in the Bernheim–Peleg–Whinston sense deferred). No theorem, proof, or axiom has been weakened or reversed. The February 2026 preprint is preserved at `bitcoingametheory.com/papers/1-exit-dominance/archive`.

---

## 1. Introduction

The global monetary system has no referee. Multiple sovereign powers
compete for economic influence, each controlling monetary instruments
that serve domestic policy objectives at the expense of foreign holders.
This creates a coordination problem that is easy to state and impossible to solve within existing institutions: in a
world where no single entity can credibly commit to monetary neutrality,
how do rational actors settle large-value transactions across trust
boundaries?

This question is structural, not conjunctural. Sovereign debt levels
have reached historical extremes: global debt reached \$313 trillion
in 2023, a debt-to-GDP ratio of 255% (IIF, 2024). No post-1800 nation
has repaid debt exceeding 90% of GDP primarily through fiscal
austerity without substantial growth,
inflation, financial repression, or default; these latter mechanisms
are the historically observed path (Reinhart and Rogoff, 2011). The
coordination problem is not whether states *will* debase, but whether
any mechanism exists through which actors can settle *despite*
debasement.

The analysis is stated descriptively: we characterize equilibrium
structure without predicting timing, price trajectories, or recommending
portfolio allocations. Normative implications are nonetheless unavoidable
when a coordination game has a unique absorbing state; readers may draw
their own policy implications, which the paper does not advocate.

The literature addresses components of this problem — mining incentives
(Biais et al., 2019; Eyal and Sirer, 2014), attack economics (Budish,
2018), price-security dynamics (Pagnotta, 2022) — but does not
integrate these into a unified strategic analysis from the allocator's
perspective. Brunnermeier, James, and Landau (2019) identify the
coordination failure but propose institutional solutions rather than
analyzing the equilibrium outcome. The gap is not a missing paper. It is
a missing perspective.

We formalize the allocator's problem as a non-cooperative game — the
"Exit Game" — and prove that the payoff advantage of Exit over Stay is
strictly increasing in adoption. Every term in the payoff differential
favors Exit under maintained monotonicity conditions. Each actor faces
an adoption threshold that approaches zero when the capturable system
delivers negative real returns — which, under structural debasement
(Assumption 1), it does.

We also prove that no coalition can sustain Stay (Theorem 2) and that
the resulting equilibrium is absorbing (Theorem 3). Bitcoin satisfies
the seven necessary properties derived here — a result established by
systematic elimination in Hash (2026b). A third paper (Hash, 2026c)
extends the analysis to autonomous AI agents, for whom neutral
settlement is not a preference but a structural requirement.

---

## 2. Related Work

### 2.1 Game Theory of Proof-of-Work Consensus

The foundational result is Biais, Bisiere, Bouvard, and Casamatta (2019):
following the longest chain constitutes a Markov Perfect Equilibrium in
a stochastic game among miners. This is the paper that moved Bitcoin
mining from engineering folklore into proper game theory, and subsequent
work largely builds on their framework. Eyal and Sirer (2014) complicate
this picture by identifying conditions under which selfish mining is
profitable — but their threshold (a miner controlling more than one-third
of hashrate) has never been approached in practice, which says more about
the incentive structure than about the theoretical vulnerability. Budish
(2018) argues that the marginal cost of a majority attack scales with
the block reward flow, which must in turn scale with secured value.
The model is elegant but leaves the fee-market contribution to the
security budget incompletely characterized: a network processing
large daily settlement volumes generates security budget partly
independent of token price, a gap the literature has not yet closed.

### 2.2 Monetary Competition and Coordination

Brunnermeier, James, and Landau (2019) is the essential reference on
digital currency competition in a multipolar world. Their core argument —
that competing monetary systems create coordination failures traditional
institutions cannot resolve — is precisely our starting point. Where we
diverge: Brunnermeier et al. treat the coordination failure as a problem
to be solved by better institutional design. We treat it as a permanent
structural feature (Assumption 1) that selects for a non-institutional
solution. Huberman, Leshno, and Moallemi (2021) analyze Bitcoin's fee market as
a congestion-priced payment system in which no agent sets prices
unilaterally. Their "monopoly without a monopolist" characterization
captures the absence of a protocol-level rent extractor, one component
of the broader neutrality property we formalize below. Their paper
establishes the congestion-pricing result; the extension to governance
and seizure resistance is ours, not theirs.

Self-fulfilling currency crises (Obstfeld, 1986, 1996) are the
intellectual ancestor of our coordination-failure mechanism: Obstfeld
established that balance-of-payments crises and fixed-exchange-rate
collapses can be driven purely by coordinated expectations under
multiple equilibria. We extend this logic from attacks on pegs to exit
from the capturable-currency system entirely. Search-theoretic models
of money (Kiyotaki and Wright, 1989; Lagos and Wright, 2005) provide
microfoundations for money's role as a medium of exchange; this paper
takes competing monetary systems as given and analyzes equilibrium
selection over them rather than re-deriving medium-of-exchange properties.

### 2.3 Monotone Comparative Statics

The monotonicity conditions (M1)-(M6) that drive our main result belong
to the framework of monotone comparative statics developed by Milgrom
and Shannon (1994) and Topkis (1998). In their language, the payoff
differential Δ_*i*(*p*) exhibits increasing differences in (*p*, adoption
decision) under our maintained conditions — precisely the
supermodularity property that guarantees monotone best responses. Our
contribution is applying this machinery to the monetary coordination
problem rather than to the firm and market settings where it originated.

### 2.4 Global Games and Equilibrium Selection

The global-games framework (Carlsson and van Damme, 1993; Morris and
Shin, 1998) is the standard modern tool for equilibrium selection in
coordination games with strategic complementarities, particularly under
private noisy observation of fundamentals. Morris and Shin (1998) apply
the framework to self-fulfilling currency attacks, delivering a unique
equilibrium selected by the informational structure rather than by
common knowledge of payoffs. Our setup — heterogeneous thresholds,
strategic complementarity, coordination over monetary standards — is
within the domain this literature addresses. *Information structure:* We
adopt public information with heterogeneous priors. All actors have access
to the same public facts about the system — code, ledger, rules, payoff
structure. Actors may hold different priors over system type owing to
asymmetric narrative exposure. Information is open; interpretation is
uneven. This placement in the higher-order-beliefs tradition rather than
the Harsanyi incomplete-information tradition reflects empirical reality:
monetary-system information is openly published but unevenly interpreted,
with competing narratives shaping actors' beliefs over whether the system
is capturable. The irreversibility result in Theorem 3 depends on shifts
in what actors believe others believe, not on updating over hidden facts.

### 2.5 Network Effects and Focal Points

Katz and Shapiro (1985, 1986) provide the theoretical machinery for our
network effect assumption. What matters for our purposes is a specific
implication they do not emphasize: in monetary networks, switching costs
compound because the network's value proposition *is* its adoption.
Schelling (1960) provides the concept of focal points — though applying
focal point theory to money requires more care than the literature
typically exercises. We argue that the focal point is determined not by
precedence but by structural resistance to the "who benefits?" objection.

We note the distinction between our "Exit" concept and Hirschman's (1970)
"exit" from organizations. In Hirschman's framework, exit is one of three
responses to organizational decline (alongside voice and loyalty). Our Exit
is a strategic action in a coordination game — adopting neutral settlement
— and does not require leaving an institution, only diversifying settlement
infrastructure.

---

## 3. Model

### 3.1 Maintained Assumptions

The analysis rests on four empirical axioms. Each is independently
assessable. All subsequent claims derive from these assumptions; rejecting
any axiom invalidates the specific claims that depend on it.

**Assumption 1 (Multipolarity).** No single entity permanently governs
global economic activity. Power distributes across competing centers with
superlinear coordination costs.

*Falsification:* A single coordinator achieves permanent, stable control
over global monetary policy with sublinear coordination costs (F1).

**Assumption 2 (Rational Self-Interest).** Actors optimize for
self-interest. When defection from cooperative agreements is unpunished
or unpunishable, actors defect.

*Falsification:* Stable cooperation persists indefinitely among
self-interested actors without enforcement mechanisms (F3).

**Assumption 3 (Computational Hardness).** Certain mathematical problems
remain computationally intractable. Digital scarcity and cryptographic
custody are implementable.

**Assumption 4 (Network Effect Persistence).** Past critical mass,
switching costs exceed marginal gains of alternatives. Incumbency
compounds (David, 1985; Arthur, 1989).

**Assumption 5 (Threshold Coverage).** The distribution of exit
thresholds {*p_i**} has continuous support on [0, 1]. Equivalently,
there is no measure-positive set of actor types for whom Exit is
strictly dominated at every adoption level.

*Falsification:* A measure-positive subpopulation has *p_i** > 1
(never-exit types); the absorbing state is then *p** < 1 at the
supremum of the threshold support.

### 3.2 Definitions

**Definition 1 (Neutral Settlement).** An asset *S* is a *neutral
settlement asset* if and only if *S* is immune to seizure, immune to
debasement, and immune to political capture by any single actor or
coordinated coalition.

**Definition 2 (Exit).** The action of moving capital from a capturable
system to a neutral settlement asset.

**Definition 3 (Capture Surface).** For a monetary system with parameter
space Θ, the capture surface for actor *A* is *CS_A* = {θ ∈ Θ : *A* can
unilaterally change θ}. A system is neutral if |*CS_A*| = 0 for all *A*.
The terminology adapts "attack surface" from security engineering to
institutional capture (cf. Stigler, 1971 on regulatory capture).

**Definition 4 (Absorbing State).** A state *p** is absorbing if
P(*p*_{*t*+1} = *p** | *p_t* = *p**) = 1. In the monetary coordination
context, the transition to *p** = 1 destroys the trust conditions
required for reversal, making the state absorbing in the standard
Markov chain sense (cf. Arthur, 1989 on lock-in).

### 3.3 Necessary Properties

From Definition 1, we derive seven necessary properties for any neutral
settlement asset. Each blocks a specific attack class:

| D1 Requirement | Attack If Missing | Required Property |
|----------------|-------------------|-------------------|
| Immune to seizure | Physical confiscation | P6: Informational security |
| Immune to seizure | Transaction censorship | P3: Permissionless access |
| Immune to debasement | Supply inflation | P5: Absolute scarcity |
| Immune to debasement | Protocol rule change | P1: Protocol security |
| Immune to capture | Governance takeover | P2: Neutrality |
| Functions as settlement | Prohibitive cost/delay | P4: Cheap finality |
| Survives future threats | Obsolescence | P7: Adaptive resilience |

**Proposition 1 (Necessity).** P1-P7 are individually necessary.
Removing any single property enables the corresponding attack, violating
Definition 1.

*Proof.* By construction from the derivation table. ∎

Bitcoin is the unique asset satisfying P1-P7 — the systematic
elimination across seven asset classes appears in Hash (2026b).

### 3.4 Game Structure

We model monetary coordination as a non-cooperative game:

**Game** *G* = (*N*, *S*, *u*) where:

- *N* = {1, 2, ..., *n*} is the set of capital allocators.
- *S_i* = {Exit, Stay} is the strategy set for player *i*.
- *u_i* : *S* → ℝ is the utility function for player *i*.

Let *p* ∈ [0, 1] denote the fraction of total capital that has chosen
Exit. We assume *R_B*, *R_F*, *σ_B*, *K_A*, *R_A*, and *K_N* are
continuous functions of *p*, bounded on [0,1]. Each actor *i* has
mean-variance preferences: utility is expected return minus a
risk-aversion coefficient *λ_i* > 0 times return variance, a
specification standard in the portfolio-allocation and
equilibrium-selection literatures. The utility functions are:

*u_i*(Exit, *s*_{-*i*}) = *R_B*(*p*) − *λ_i* · *σ_B*(*p*) − *κ_i* · *K_A*(*p*) − *ρ_i* · *R_A*(*p*)

*u_i*(Stay, *s*_{-*i*}) = *R_F*(*p*) − *λ_i* · *σ_F* − *K_N*(*p*)

Here *K_A*(*p*) is the adoption penalty — the switching cost of moving
to neutral settlement, analogous to technology adoption costs in network
economics (Katz and Shapiro, 1985; Farrell and Saloner, 1985). *K_N*(*p*)
is the non-adoption penalty — the opportunity cost imposed on non-adopters
as the competing network grows, a form of negative network externality.

**Maintained monotonicity conditions:**

(M1) *R_B*'(*p*) > 0 — Network effects increase return (Assumption 4)
(M2) *σ_B*'(*p*) < 0 — Deeper markets reduce volatility (Kyle, 1985; Amihud, 2002)
(M3) *K_A*'(*p*) < 0 — Adoption penalty falls with adoption
(M4) *R_A*'(*p*) < 0 — Regulatory penalty decreases as adoption normalizes compliance
(M5) *K_N*'(*p*) > 0 — Non-adoption penalty rises as competitors exit
(M6) *R_F*'(*p*) ≤ 0 — Capturable return weakly decreasing in neutral adoption (the capturable system loses value as capital departs)

The market-microstructure basis for (M2) is standard: deeper markets
lower the price impact of order flow (Kyle's λ decreases with depth),
and lower price impact translates to lower realized return volatility
at a fixed rate of information arrival (Amihud, 2002).

---

## 4. Main Results

### 4.1 Exit Dominance

**Theorem 1 (Monotone Exit Advantage).** Under Assumptions 1-4 and
maintained conditions (M1)-(M6):

(i) The payoff differential Δ_*i*(*p*) is strictly increasing in *p*
for all player types.

(ii) For each player *i*, there exists a threshold *p_i** ∈ [0, 1]
such that Exit is the unique best response for *p* > *p_i**.

(iii) Under Assumption 1 (*R_F*(0) < 0), thresholds cluster near zero
for actors with typical risk preferences.

*Proof.* Define the payoff differential:

Δ_*i*(*p*) = *u_i*(Exit) − *u_i*(Stay)

= [*R_B*(*p*) − *R_F*(*p*)] − *λ_i*[*σ_B*(*p*) − *σ_F*] − *κ_i* · *K_A*(*p*) − *ρ_i* · *R_A*(*p*) + *K_N*(*p*)

Taking the derivative with respect to *p*:

dΔ_*i*/d*p* = *R_B*'(*p*) − *R_F*'(*p*) − *λ_i* · *σ_B*'(*p*) − *κ_i* · *K_A*'(*p*) − *ρ_i* · *R_A*'(*p*) + *K_N*'(*p*)

Under the maintained monotonicity conditions (M1)-(M6), each term is
non-negative and at least one is strictly positive:

| Term | Sign | Reason |
|------|------|--------|
| *R_B*'(*p*) | > 0 | (M1) |
| −*R_F*'(*p*) | ≥ 0 | (M6) |
| −*λ_i* · *σ_B*'(*p*) | > 0 | *λ_i* > 0, *σ_B*'(*p*) < 0 by (M2) |
| −*κ_i* · *K_A*'(*p*) | > 0 | *κ_i* ≥ 0, *K_A*'(*p*) < 0 by (M3) |
| −*ρ_i* · *R_A*'(*p*) | > 0 | *ρ_i* ≥ 0, *R_A*'(*p*) < 0 by (M4) |
| *K_N*'(*p*) | > 0 | (M5) |

Therefore dΔ_*i*/d*p* > 0: the advantage of Exit is strictly increasing
in *p*. Strict inequality in (M6) strictly strengthens the result; the
weak inequality stated in (M6) is sufficient to preserve it.

At *p* = 0 (no one has exited), Δ_*i*(0) < 0 since the adoption penalty
dominates and the capturable system provides positive baseline value. At
*p* = 1 (full adoption), Δ_*i*(1) > 0 since exit-dominant payoffs strictly
exceed legacy payoffs under universal adoption: the neutral system's network
effects fully manifest while the capturable system has been abandoned. By
continuity of Δ_*i* in *p* and the intermediate value theorem, there exists
a threshold *p_i** ∈ (0, 1) satisfying Δ_*i*(*p_i**) = 0. For *p* >
*p_i**, Δ_*i*(*p*) > 0 and Exit strictly dominates.

Under Assumption 1, *R_F*(*p*) < 0 in real terms at *p* = 0 (sovereign
debt overhangs at the contemporary scale historically resolve through
debasement, restructuring, or default rather than through fiscal
austerity alone; Reinhart and Rogoff, 2011). This ensures that even at
*p* = 0, the first term [*R_B*(0) − *R_F*(0)] provides positive
contribution, lowering *p_i** toward zero for many actor types.

For the marginal allocation argument: even for actors with *p* < *p_i**,
a small allocation *ε* > 0 provides *u_i*(*w_i* = *ε*) > *u_i*(*w_i* = 0)
because the first-order gain from network participation exceeds the
first-order volatility cost for sufficiently small *ε*. This holds for
a wide range of parameter values. ∎

**Remark.** The game matrix at the individual level:

|  | Others: Stay | Others: Exit |
|---|---|---|
| **Player *i*: Stay** | *R_F*(0) < 0 | *R_F*(*p*) − *K_N*(*p*) |
| **Player *i*: Exit** | *R_B*(0) − *K_A*(0) | *R_B*(*p*) |

Under Assumption 1 (*R_F*(0) < 0), Exit yields higher payoff in both
columns for actors whose threshold *p_i** is at or below the current
adoption level.

### 4.2 Coordination Failure

**Theorem 2 (Coalition Instability).** When Exit is available and
unpunishable, and individual exit payoffs exceed coalition benefits
(Theorem 1), no coalition can prevent member defection and sustain coordinated
Stay.

*Proof.* Consider a coalition *C* ⊆ *N* maintaining Stay. For this
coalition to be self-enforcing in the sense of Bernheim, Peleg, and
Whinston (1987), no member *j* ∈ *C* can profit from unilateral
defection.

By Theorem 1, *u_j*(Exit) > *u_j*(Stay) for *j* when *p* exceeds *p_j**;
this payoff advantage already accounts for the adoption penalty *K_A*(*p*).
Property P3 (permissionless access) means the institutional cost of
defection is zero — no permission, regulatory approval, or cooperation is
required to initiate settlement. The economic advantage of exiting (net of
adoption penalties) exceeds the coalition's ability to enforce Stay.

The coalition faces a standard free-rider problem: the benefit of
collective Stay is a public good (maintained value of capturable system),
but the benefit of individual defection is a private good (captured
network effects, avoidance of debasement). Under Assumption 2, the
private good dominates.

The dynamics compound: the first sovereign to defect captures fleeing
capital, an asymmetry familiar from the history of reserve-currency
transitions (Eichengreen, Mehl, and Chițu, 2017). El Salvador adopted
Bitcoin as legal tender in 2021 (Bukele, 2021), cited here as existence
proof that sovereign-scale defection is feasible, not as evidence of
equilibrium trajectory. Each subsequent defection raises *K_N*(*p*) for
remaining coalition members, accelerating further defection.

Formally:

*u_j*(defect from *C*) > *u_j*(remain in *C*)

for all *j* ∈ *C*, making the all-Stay profile not coalition-proof. ∎

### 4.3 Absorbing State

**Theorem 3 (Absorption).** The state (*Exit*, *Exit*) is absorbing:
once entered, there exists no feasible sequence of individual actions
leading back to (*Stay*, *Stay*).

*Proof.* Define the aggregate adoption process {*p_t*}_{t≥0} on state
space [0, 1].

For *p_t* ≥ *p_c* (critical mass threshold), we show that *p_{t+1}* ≥
*p_t* with probability 1.

**Step 1 (No Exit-to-Stay switching).** Any actor who has chosen Exit
at time *t* did so because Δ_*i*(*p_t*) ≥ 0. By Step 2 (positive drift
in *p*), *p_{t+s}* ≥ *p_t* for all *s* ≥ 0, and by Theorem 1 Δ_*i* is
increasing in *p*, so Δ_*i*(*p_{t+s}*) ≥ Δ_*i*(*p_t*) ≥ 0 at every future
date. Infrastructure lock-in costs (custody solutions, regulatory
frameworks, accounting standards) provide additional asymmetry against
reversal but are not load-bearing for the argument. No rational actor
switches from Exit to Stay.

**Step 2 (Positive drift).** For actors currently at Stay: Δ_*i*(*p_t*)
is increasing in *p_t* (shown in Theorem 1). As *p_t* increases, more
actors cross their thresholds *p_i**, increasing *p_{t+1}*.

**Step 3 (Convergence).** The process {*p_t*} is monotone non-decreasing
and bounded above by 1. By the monotone convergence theorem for
bounded monotone sequences, *p_t* → *p** for some *p** ≤ 1.

Under Assumption 5 (continuous support of thresholds on [0,1]), if
*p** < 1 there exists an actor *j* at Stay with Δ_*j*(*p**) > 0,
contradicting stationarity at *p**. Therefore *p** = 1. Without
Assumption 5, *p** equals the supremum of the support of the threshold
distribution; when a measure-positive subpopulation has *p_i** > 1
(never-exit types), *p** < 1 and the absorbing state concentrates at
that supremum rather than at unity.

**Step 4 (No-return via higher-order belief breakdown).** Observed exits
are public signals that shift higher-order beliefs: each actor revises
their estimate of what other actors now believe about system capturability.
Once cumulative exits cross the critical mass *p**, the higher-order belief
that *others believe the system is capturable* becomes common knowledge
among remaining actors, and the coordination equilibrium on the legacy
system fails. Return would require re-establishing common knowledge of
non-capturability — a coordination task that the original narrative
monopoly, having been publicly falsified by observed exits, can no longer
supply. The narrative apparatus that once coordinated on Stay is destroyed;
no new enforcement mechanism (ruled out by Assumption 1) can rebuild it.
Hence the absorbing state is one-sided: entry requires only a critical mass
of exits, exit requires reconstruction of a destroyed common-knowledge
structure. The state *p* = *p** is therefore absorbing: P(*p_{t+1}* = *p** |
*p_t* = *p**) = 1. A return cartel faces the same coordination failure as a
stay cartel (Theorem 2). ∎

### 4.4 Cascade Dynamics

**Proposition 2 (Adoption Cascades).** Given Theorems 1-3, adoption
occurs in bursts (cf. Bikhchandani, Hirshleifer, and Welch, 1992 on
informational cascades; our mechanism is payoff-driven rather than
information-driven).

The cascade operates through the interaction of *K_A*(*p*) and *K_N*(*p*):
as *p* increases, the adoption penalty falls and the non-adoption penalty
rises, pushing additional actors past their thresholds *p_i**. This
creates punctuated equilibria: periods of stability followed by rapid
adoption bursts when a critical mass of actors simultaneously crosses
their thresholds.

**Comparative statics.** By the implicit function theorem applied to
Δ_*i*(*p_i**) = 0:

d*p_i**/d*λ_i* = −(∂Δ_*i*/∂*λ_i*) / (dΔ_*i*/d*p*) > 0

More risk-averse actors have higher thresholds (they wait longer). But
they still eventually exit because dΔ_*i*/d*p* > 0 pushes the advantage
past any finite risk aversion as *p* → 1.

---

## 5. Falsification

We separate falsifiers into three bands. Axiom falsifiers break a
maintained assumption. Theorem falsifiers break a derived result while
leaving the axioms intact. Scope conditions delimit the domain of
applicability and are not Popperian falsifiers.

*Axiom falsifiers*

| ID | Condition | Breaks |
|----|-----------|--------|
| F1 | Global coordination cost becomes sublinear | Assumption 1 |
| F3 | (Stay, Stay) is stable equilibrium when Exit exists | Assumption 2 |
| F5 | Quantum computing breaks cryptographic primitives before migration | Assumption 3 |

*Theorem falsifiers*

| ID | Condition | Breaks |
|----|-----------|--------|
| F4 | Stable cartel prevents Exit indefinitely | Theorem 2 |

*Scope conditions*

| ID | Condition | Breaks |
|----|-----------|--------|
| F2 | An alternative asset satisfies P1-P7 (tested in Hash, 2026b) | Uniqueness |
| F6 | AI agents gain enforceable legal personhood (tested in Hash, 2026c) | Limiting case |

For formal dispute procedures and evidence standards, see bitcoingametheory.com/rfc/BGT-DISPUTE.txt.

Note what does *not* falsify the model: price declines, regulatory
actions against specific intermediaries, developer controversies, or
energy consumption debates. These affect adoption timing, not
equilibrium structure.

---

## 6. Limitations

**Continuous strategies.** The binary Exit/Stay structure is a modeling
choice. Real actors face continuous allocation decisions: a pension fund
does not choose between 0% and 100% but between 0%, 1%, 5%. The marginal
allocation argument in §4.1 partially addresses this. Under continuous
allocation *w_i* ∈ [0,1], the equivalent claim is that aggregate weight
on neutral settlement approaches unity in the absorbing state; formal
proof of the continuous-strategy analog under mean-variance or constant
relative risk aversion (CRRA) preferences is deferred to future work.

**Stochastic stability.** Theorem 3 establishes deterministic monotone
convergence. Stochastic stability in the sense of Kandori, Mailath, and
Rob (1993), under perturbed best-response dynamics with vanishing
mutation rate, is deferred. We expect the absorbing state to be
stochastically stable under standard perturbation assumptions but do
not prove it here.

**Coalition-proofness strength.** Theorem 2 establishes that no
coalition sustains Stay against individual defection. This is weaker
than coalition-proof Nash nonexistence in the full Bernheim, Peleg, and
Whinston (1987) sense, which requires robustness against self-enforcing
sub-coalition deviations. The stronger claim is consistent with the
paper's economic logic but is not proved here.

**Monotonicity conditions.** (M1)-(M6) are empirically motivated but
not derived from first principles. Each could be violated in specific
regimes (for example, *R_B*'(*p*) could be negative during a network
congestion crisis). The model's robustness depends on these conditions
holding *on average and in the long run*, not at every instant.
Formalizing this through time-averaged conditions is a natural extension.

---

## 7. Conclusion

The argument rests on four axioms: multipolarity is persistent, actors
are self-interested, cryptography works, and network effects compound.
From these we derive a monotone increasing payoff advantage, coalition
instability, and absorbing dynamics. Bitcoin is the unique asset serving
as the Exit destination (Hash, 2026b); autonomous agents face the
strongest version of this convergence pressure (Hash, 2026c). Six
falsification conditions across the series identify when and how these
claims fail.

The framework developed here has been applied and extended in three companion papers. Hash (2026b) applies the seven necessary properties as an elimination test across seven candidate settlement assets and finds that no non-Bitcoin candidate jointly satisfies them. Hash (2026c) extends the Exit Game to autonomous-agent settlement under zero-trust conditions, where neutrality becomes a structural requirement rather than a preference. Hash (2026d) studies the predator-prey dynamics that arise when neutral settlement coexists with enforcement-driven monetary regimes. The seven properties of this paper function as the common spine across the series; the elimination result of Hash (2026b) is an external structural check the framework had to survive.

---

## Acknowledgement

The author thanks participants and readers of the February 2026 preprint for feedback that informed this revision.

---

## Conflict of Interest

The author declares no conflicts of interest. The author holds a position in Bitcoin.

---

## References

Amihud, Y. (2002). Illiquidity and stock returns: cross-section and
time-series effects. *Journal of Financial Markets*, 5(1), 31-56.
https://doi.org/10.1016/S1386-4181(01)00024-6

Arthur, W. B. (1989). Competing technologies, increasing returns, and
lock-in by historical events. *Economic Journal*, 99(394), 116-131.
https://doi.org/10.2307/2234208

Bernheim, B. D., Peleg, B., and Whinston, M. D. (1987). Coalition-proof
Nash equilibria I. Concepts. *Journal of Economic Theory*, 42(1), 1-12.
https://doi.org/10.1016/0022-0531(87)90099-8

Biais, B., Bisiere, C., Bouvard, M., and Casamatta, C. (2019). The
blockchain folk theorem. *Review of Financial Studies*, 32(5), 1662-1715.
https://doi.org/10.1093/rfs/hhy095

Bikhchandani, S., Hirshleifer, D., and Welch, I. (1992). A theory of
fads, fashion, custom, and cultural change as informational cascades.
*Journal of Political Economy*, 100(5), 992-1026.
https://doi.org/10.1086/261849

Brunnermeier, M. K., James, H., and Landau, J.-P. (2019). *The
Digitalization of Money*. NBER Working Paper 26300.
https://doi.org/10.3386/w26300

Budish, E. (2018). The economic limits of Bitcoin and the blockchain.
*NBER Working Paper* No. 24717.
https://doi.org/10.3386/w24717

Bukele, N. (2021). Bitcoin Law. Legislative Decree No. 57, Republic of
El Salvador.

Carlsson, H. and van Damme, E. (1993). Global games and equilibrium
selection. *Econometrica*, 61(5), 989-1018.
https://doi.org/10.2307/2951491

David, P. A. (1985). Clio and the economics of QWERTY. *American
Economic Review*, 75(2), 332-337.

Eichengreen, B., Mehl, A., and Chițu, L. (2017). Mars or Mercury? The
geopolitics of international currency choice. *NBER Working Paper* No.
24145. https://doi.org/10.3386/w24145

Eyal, I. and Sirer, E. G. (2014). Majority is not enough: Bitcoin
mining is vulnerable. *Communications of the ACM*, 61(7), 95-102, 2018.
https://doi.org/10.1145/3212998

Farrell, J. and Saloner, G. (1985). Standardization, compatibility,
and innovation. *RAND Journal of Economics*, 16(1), 70-83.
https://doi.org/10.2307/2555589

Hirschman, A. O. (1970). *Exit, Voice, and Loyalty*. Harvard University
Press.

Huberman, G., Leshno, J. D., and Moallemi, C. (2021). Monopoly without
a monopolist. *Review of Economic Studies*, 88(6), 3011-3040.
https://doi.org/10.1093/restud/rdab014

Institute of International Finance (2024). *Global Debt Monitor:
Politics and Climate Finance in a Fragmenting World*. IIF, February 2024.

Kandori, M., Mailath, G. J., and Rob, R. (1993). Learning, mutation,
and long run equilibria in games. *Econometrica*, 61(1), 29-56.
https://doi.org/10.2307/2951777

Katz, M. L. and Shapiro, C. (1985). Network externalities, competition,
and compatibility. *American Economic Review*, 75(3), 424-440.

Katz, M. L. and Shapiro, C. (1986). Technology adoption in the presence
of network externalities. *Journal of Political Economy*, 94(4), 822-841.
https://doi.org/10.1086/261409

Kiyotaki, N. and Wright, R. (1989). On money as a medium of exchange.
*Journal of Political Economy*, 97(4), 927-954.
https://doi.org/10.1086/261634

Kyle, A. S. (1985). Continuous auctions and insider trading.
*Econometrica*, 53(6), 1315-1335.
https://doi.org/10.2307/1913210

Lagos, R. and Wright, R. (2005). A unified framework for monetary theory
and policy analysis. *Journal of Political Economy*, 113(3), 463-484.
https://doi.org/10.1086/429804

Milgrom, P. and Shannon, C. (1994). Monotone comparative statics.
*Econometrica*, 62(1), 157-180.
https://doi.org/10.2307/2951479

Morris, S. and Shin, H. S. (1998). Unique equilibrium in a model of
self-fulfilling currency attacks. *American Economic Review*, 88(3),
587-597.

Obstfeld, M. (1986). Rational and self-fulfilling balance-of-payments
crises. *American Economic Review*, 76(1), 72-81.

Obstfeld, M. (1996). Models of currency crises with self-fulfilling
features. *European Economic Review*, 40(3-5), 1037-1047.
https://doi.org/10.1016/0014-2921(95)00111-5

Reinhart, C. M. and Rogoff, K. S. (2011). A decade of debt. *NBER
Working Paper* No. 16827. https://doi.org/10.3386/w16827

Hash (2026b). Bitcoin as unique neutral settlement: A seven-property
elimination. Working paper, bitcoingametheory.com.

Hash (2026c). Settlement at zero trust: Bitcoin and autonomous economic
agents. Working paper, bitcoingametheory.com.

Hash (2026d). Monetary predator-prey dynamics: Enforcement gridlock and
neutral settlement survival. Working paper, bitcoingametheory.com.

Pagnotta, E. S. (2022). Decentralizing money: Bitcoin prices and
blockchain security. *Review of Financial Studies*, 35(2), 866-907.
https://doi.org/10.1093/rfs/hhaa149

Schelling, T. C. (1960). *The Strategy of Conflict*. Harvard University
Press.

Stigler, G. J. (1971). The theory of economic regulation. *Bell Journal
of Economics and Management Science*, 2(1), 3-21.
https://doi.org/10.2307/3003160

Topkis, D. M. (1998). *Supermodularity and Complementarity*. Princeton
University Press.

---

## Appendix: Notation

| Symbol | Definition |
|--------|-----------|
| *G* | Settlement game (*N*, *S*, *u*) |
| *N* | Set of capital allocators |
| *S_i* | Strategy set: {Exit, Stay} |
| *u_i* | Utility function |
| *p* | Fraction of capital at Exit |
| *p_i** | Threshold for player *i* |
| Δ_*i*(*p*) | Payoff differential: *u_i*(Exit) − *u_i*(Stay) |
| *R_B*(*p*) | Expected real return on neutral settlement asset |
| *R_F*(*p*) | Expected real return on capturable assets |
| *σ_B*(*p*) | Volatility of neutral settlement asset |
| *σ_F* | Volatility of capturable assets |
| *K_A*(*p*) | Adoption penalty |
| *R_A*(*p*) | Regulatory penalty (decreases as regulatory clarity improves) |
| *K_N*(*p*) | Non-adoption penalty |
| *λ_i*, *κ_i*, *ρ_i* | Risk aversion, career penalty, regulatory penalty |
| *CS_A* | Capture surface for actor *A*: {θ ∈ Θ : *A* can unilaterally change θ} |
| (M1)-(M6) | Monotonicity conditions |
