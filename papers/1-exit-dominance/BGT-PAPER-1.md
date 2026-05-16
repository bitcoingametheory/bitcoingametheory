::: center
**Bitcoin Exit Dominance in Monetary Coordination Games**

Sean Hash\
[bitcoingametheory.com](bitcoingametheory.com){.uri}\
<sean@bitcoingametheory.com>

Preprint: February 2026 (SSRN 6299081)\
Revised: May 2026\
Working Paper

**JEL Codes:** C72, D71, D83, E42, E51, G11, L14\
**Keywords:** Bitcoin, game theory, coalition-proof Nash equilibrium, monetary coordination, neutral settlement, strategic complementarities, coordination failure, threshold strategy, digital scarcity, network effects
:::

**Revision Note, May 2026.**
Prepared for journal submission; references updated and tightened. Substantive changes from the February 2026 preprint (SSRN 6299081):

-   Theorem 1 is recast in ratchet form. The preprint claimed full absorption at $p = 1$; the revision claims that $\{p > p_c\}$ is coalition-proof and that $p_c$ shifts monotonically downward as the slowly-varying state $(K_t, D_t)$ accumulates ($K_t$ recognition; $D_t$ debasement; §3.5). Permanent holdouts are admitted by construction.

-   Adoption is capital-weighted: $p_t = \sum_{i \in \text{Exit}_t} a_i$. Preference falsification (Kuran^16^) provides the psychological reasoning for why actors say Stay but allocate Exit. Aggregate $p_t$ counts the allocation, not the stated posture.

-   Volatility apparatus is dropped. $\sigma_B$, $\sigma_F$, and the risk-aversion weight $\lambda_i$ are removed; monotonicity conditions reduce from (M1)--(M5) to (M1)--(M4). The allocator-side friction is now money illusion (Fisher^11^): nominal stability is read as safety and lumpy real outperformance as risk.

-   Definition 2 (Capturable System) replaces the preprint's Capture Surface. $D_t$ in §3.5 now indexes three post-1945 financial-repression channels: debt overhang (IMF^14^), the inflation--capital-gains tax wedge (Feldstein^10^), and the rate-cap and reserve-requirement toolkit (Reinhart and Sbrancia^21^).

-   Section 5 (formerly Limitations) is folded into the Conclusion; per-assumption failure conditions are retained at conclusion register, with A2's clause reformulated to a primitive of agent rationality. $D_t$ in §3.2 is flagged as a latent structural index.

-   Coalition Instability (Proposition 2) restated as Nash-stability, with P3 (permissionless access) as the load-bearing institutional clause; Bernheim-Peleg-Whinston coalition-proofness is now reserved for Theorem 1 (Ratchet), where it does formal work.

The four assumptions and the central claim of Bitcoin Exit Dominance remain unchanged; the result is restructured into Theorem 2 for clarity.

# 1. Introduction

A capital allocator with purchasing power to protect faces a choice between two settlement systems. The first is the prevailing one: sovereign currency, custodied by regulated intermediaries, settled through banking and securities infrastructure. Call this Stay. The second is a settlement asset that no government issues, no intermediary custodies, and no political body can debase or freeze. Call this Exit. This is the Exit Game. The question is not which system any one allocator prefers. It is whether the repeated incentives will push a critical mass of capital from Stay to Exit.

While partial exit via gold has existed for thousands of years, true exit only became possible when Nakamoto^19^ mined his first block on 3 January 2009. In the genesis block of Bitcoin he encoded that morning's front-page headline from *The Times* of London: "Chancellor on brink of second bailout for banks." Since 2009, hashrate on the Bitcoin network has only ever trended higher, despite sovereign mining bans and several hostile hard-fork events. Adoption by ever larger cohorts of capital (ETFs, pension funds, sovereigns) suggests rational allocators continue to defect to Exit.

The usual measure of debasement risk is debt-to-GDP. Public debt is near 100% of GDP and projected at 115% by the early 2030s (IMF^14^). At that scale, history says the debt gets paid down by debasing the currency, not by taxes (Reinhart and Sbrancia^21^). High debt is not itself new: what is new is what governments are now committed to spend through the 2030s with no tax base behind it. The United States is stepping back from its role as world military referee, and NATO members pledged in June 2025 to spend 5% of GDP on defense by 2035. The logic in every arms race is the same: spend more or get left behind (Richardson^22^; Powell^20^). AI is the same race: better AI means better weapons, so winning compute means winning force. AI capex in 2026 runs at a multiple of Apollo's peak GDP share ($\sim$`<!-- -->`{=html}0.7% in 1966), and China is investing at comparable scale through state direction. Neither side can stop without losing the lead (Armstrong, Bostrom, and Shulman^1^). The Exit Game does not require any specific catalyst to work. The emerging AI-military arms race trends above set the backdrop because they are the largest known debasement catalysts today.

The deeper point in the genesis block was the subtle nod to the Cantillon effect: in every fiat system, those nearest to issuance capture the wealth transfer that debasement creates (Cantillon^7^). Will aggregate capital flee to a new system where no central issuer can benefit from the Cantillon effect to debase the many to enrich the few? This paper turns that question into a formal game.

# 2. Related Work

The closest prior policy treatment is
Brunnermeier, James, and Landau^5^, who describe the
coordination problem verbally without formal derivation and prescribe
central bank digital currency. A CBDC remains sovereign-issued,
freezable, and debaseable, fails Definition 1, and is an instance of
Stay that Theorem 2 covers.

The existing Bitcoin game-theoretic literature concentrates on the mining subgame, which sustains itself through miner skin in the game: hardware built for one purpose, rewards paid in the coin a successful attack would destroy. Two dissents press against this view. Budish^6^ extends his high-frequency-trading rent-seeking critique to Bitcoin mining. Eyal and Sirer^9^ identify a selfish-mining limit under which a concentrated pool earns above its honest share by withholding blocks. Neither attack has been profitably executed on chain: shorting Bitcoin at attack scale exceeds available derivatives liquidity, KYC at every fiat off-ramp makes the attacker's identity legible before they can position, and a pool revealed as malicious loses the hashrate it depends on.

The view of this paper, in line with Szabo^23^, is the opposite of Budish: mining energy is the unforgeable costliness sustaining neutral settlement.^24^ Three results triangulate the intertwined cryptographic and economic hardness Assumption 3 refers to. Biais, Bisière, Bouvard, and Casamatta^4^ show that following the longest chain is a stable equilibrium in the mining subgame. Garay, Kiayias, and Leonardos^13^ prove that under honest majority the protocol delivers common prefix, chain quality, and chain growth: the formal cryptographic guarantee that proof-of-work yields consensus. Chen^8^ closes the price-security loop in general equilibrium.

# 3. Model

## 3.1 Maintained Assumptions

The analysis rests on four assumptions. All subsequent claims derive from these assumptions; rejecting any assumption invalidates the specific claims that depend on it.

::: assumption
**Assumption 1** (Multipolarity). Power is split across power centers where no center can exert unilateral control of the settlement layer.
:::

::: assumption
**Assumption 2** (Rational Self-Interest). Actors optimize for self-interest. When defection from cooperative
agreements is unpunished or unpunishable, actors defect.
:::

::: assumption
**Assumption 3** (Computational Hardness). Certain mathematical problems cannot be solved in practical time by any known algorithm, sustained via economic incentive (see §2). Digital scarcity and cryptographic custody are implementable.
:::

::: assumption
**Assumption 4** (Network Effect Persistence). Past critical mass, switching costs exceed marginal gains of alternatives. An established network attracts further adopters; its lead compounds (Katz and Shapiro^15^).
:::

## 3.2 Definitions

::: definition
**Definition 1** (Neutral Settlement). Bitcoin is the neutral settlement asset of the Exit-Stay game, satisfying Properties P1--P7. Each P$i$ closes one *attack channel* a coalition of Exit holders could use to profitably return to Stay. Cryptographic and consensus primitives grounding P1--P3 and P5--P6 trace to Nakamoto^19^. P1--P7 are assumed throughout, as is the miner-subgame result of §2.
:::

  Closure Property             Attack Channel
  ---------------------------- ------------------------
  P1: Informational security   Physical confiscation
  P2: Protocol security        Protocol rule change
  P3: Permissionless access    Transaction censorship
  P4: Absolute scarcity        Supply inflation
  P5: Cheap finality           Prohibitive cost/delay
  P6: Neutrality               Governance takeover
  P7: Adaptive resilience      Obsolescence

  : **Table 1.** The seven attack channels Bitcoin closes. Each row names the property and the attack it blocks.

*Gold as Neutral Settlement.* Gold has been synonymous with neutral settlement across five millennia. Density, divisibility, recognizability, and aesthetic appeal sustained it as money in the market-selection account of monetary emergence (Menger^17^). Wampum, cowrie shells, and salt shared the surface properties but failed P4 once industrial production, oceanic shipping, and refined extraction broke their scarcity. Only gold has held P4 across that span. Arslanalp, Eichengreen, and Simpson-Bell^2^ trace the post-2022 central-bank gold buying to financial-sanctions risk on the main reserve issuers, not generic flight-to-safety. Gold has four known structural failures: confiscation at handoff, with Executive Order 6102 as precedent; assay risk; settlement cost scaling with mass; and supply inflation at roughly 1.5% annually.

::: definition
**Definition 2** (Capturable System). A monetary system in which at least one of P1--P7 fails for its
underlying settlement asset. Fiat, sovereign bonds, and equities
have no exit valve: equities admit no bearer instrument separable
from the share, and fiat and bonds have no underlying outside the
issuing system. Gold and Bitcoin offer redemption to a
self-custodiable bearer asset. Gold terminates in physical gold,
which retains the four failures above. Bitcoin ETFs can be
redeemed in steps to self-custodied Bitcoin, which satisfies P1--P7.
:::

::: definition
**Definition 3** (Exit). The action of moving capital from a capturable system to a neutral
settlement asset. The complement is *Stay*: holding
capital in the prevailing capturable system.
:::

## 3.3 Game

The Exit Game is a non-cooperative game in which each capital allocator chooses one of two actions: hold capital in the prevailing capturable system (Stay) or move it to a neutral settlement asset (Exit). Exit is not free. Early exit to Bitcoin requires a social cost to act against peer consensus. Depending on jurisdiction and employment, exit to Bitcoin can also cost real legal or reputational damage.

**Players.** $N$ is the population of capital allocators, weighted by their share $a_i$ of total capturable capital. $\kappa_i > 0$ is how much social cost allocator $i$ pays for moving before peers. $\rho_i > 0$ is how exposed allocator $i$ is to state penalty for the move itself. Fiduciaries answering to boards, committees, or constituencies sit at the high end of $\kappa_i$. Individuals and unilateral sovereigns sit lower. Both weights vary continuously across allocators.

**Objective.** Preserve real purchasing power. Preference for capturable versus neutral assets is a pure function of the Exit Game.

**Rules.** Each allocator's per-period action is binary: Exit or Stay. The aggregate $p_t$ evolves continuously because allocators are heterogeneous in their thresholds and cross at different moments. Per-player actions are reversible: a player can re-Stay if $p_t$ retreats below their personal threshold. Switching assets incurs friction; positions are sticky. As $p$ rises, Exit pays more and Stay pays less. §3.4.

**Dynamics.** Two things grow slowly and do not reverse: more allocators come to see that staying in the system is losing them real money, and the money itself keeps getting debased. As both build, net capital moves into Exit. §3.5.

**Payoffs.** The game is $G = (N, S, u)$ in standard non-cooperative form (Fudenberg and Tirole^12^), with per-period action set $S_i = \{\text{Exit}, \text{Stay}\}$, capital weights $\sum_i a_i = 1$, and aggregate adoption $p_t = \sum_{i \in \text{Exit}_t} a_i$. Each player's strategy is a threshold $p_i^* \in [0, 1] \cup \{+\infty\}$ specializing §3.5: Exit when $p_t > p_i^*$, Stay when $p_t \le p_i^*$. The per-player action is binary and reversible at the player level; the aggregate $p_t$ moves continuously across the heterogeneous threshold distribution and may itself drawdown. The monotone object is the critical mass $p_c$, which shifts downward as $(K_t, D_t)$ (recognition; debasement) accumulate (§4.3).
$$u_i^E(p) := R_B(p) - \kappa_i K_A(p) - \rho_i R_A(p),$$
$$u_i^S(p) := R_F - K_N(p).$$

-   $R_B(p)$: real return on the neutral asset.

-   $R_F$: return on capturable assets.

-   $K_A(p)$: conformity cost of acting before peers (Katz and Shapiro^15^).

-   $R_A(p)$: realization and regulatory friction; gains tax, fees, *etc*.

-   $K_N(p)$: non-adoption penalty.

Weights are strictly positive and differ across allocators. $R_B$, $K_A$, $R_A$, $K_N$ are continuous and bounded.

                      Others: Stay   Others: Exit
  ------------------ -------------- --------------
  Player $i$: Stay     $u_i^S(0)$     $u_i^S(p)$
  Player $i$: Exit     $u_i^E(0)$     $u_i^E(p)$

  : **Table 2.** Normal-form payoff matrix for player $i$, with $u_i^E$, $u_i^S$ as defined above.

## 3.4 Monotonicity Conditions

Milgrom and Shannon^18^ showed that when the payoff
gap between two options widens as some parameter rises, the player's
best response moves toward the favored option and does not return.
This paper applies that result with adoption $p$ as the parameter
and Exit as the favored option: as more actors exit, Exit's gap
over Stay widens. Four conditions on the payoff components secure
that widening.

1.  $R_B'(p) > 0$: Bitcoin's return rises with adoption (network effects, Assumption 4)

2.  $K_A'(p) < 0$: The cost of switching to Bitcoin falls as more allocators switch

3.  $R_A'(p) < 0$: Friction eases as adoption normalizes

4.  $K_N'(p) > 0$: The cost of staying in capturable assets rises as competitors exit

These conditions hold on average over long
horizons rather than at every instant.

## 3.5 Threshold Drift

The capturable system's failure mode is not the overt seizure,
capital control, or hyperinflation. It is the continuous
extraction of real wealth through the interaction of nominal
asset appreciation and the taxation of nominal gains. As
debasement raises the price level, equities, real estate, and
similar capturable assets appreciate nominally to preserve real
value. Holders are then taxed on the nominal gain. Post-tax real
returns are negative (Feldstein^10^). Public debt keeps growing; private
claims lose real value to service the debt. Nominally, balances go up. The loss only shows in real terms. Multipolarity (Assumption 1) leaves debasement unchecked. The tax wedge on nominal gains then produces $R_F < 0$ in real terms.
Allocators accept the slow erosion because money illusion
(Fisher^11^) reads nominal stability as safety
and treats lumpy real outperformance as risk.

The macro state evolves on two slowly-varying indices:

-   $K_t \in [0,1]$ (*recognition*): the share of capital allocators who recognize capturable assets as financially repressed. Recognition accumulates gradually rather than arriving with a discrete capture event.

-   $D_t \in [0, \infty)$ (*debasement*): a latent debasement-intensity index summarizing three post-1945 financial-repression channels: debt-to-GDP overhang (IMF^14^), the inflation--capital-gains tax wedge (Feldstein^10^), and the rate-cap and reserve-requirement toolkit (Reinhart and Sbrancia^21^).

Both $K_t$ and $D_t$ trend monotonic over the structural horizon. Short-horizon reversals are admitted as fluctuations around the trend: generational forgetting in $K_t$, hawkish tightening episodes in $D_t$.

Let $\Delta_i(p; K, D) := u_i^E(p) - u_i^S(p)$ denote player $i$'s Exit minus Stay payoff gap at adoption $p$ and macro state $(K, D)$. Each allocator's threshold depends on $(K, D)$:
$$p_i^*(K, D) := \inf\{p \in [0, 1] : \Delta_i(p; K, D) > 0\}.$$
Assume the sign conditions
$$\frac{\partial p_i^*}{\partial K} \leq 0, \qquad
\frac{\partial p_i^*}{\partial D} \leq 0.$$
These hold strictly for at least some capital allocators.
Higher $D_t$ lowers $R_F$ in real terms. Higher $K_t$ erodes
$\kappa_i K_A$ and $\rho_i R_A$. Both effects raise
$\Delta_i(0; K, D)$ and push $p_i^*$ down.

The critical mass invoked in Assumption 4 is the smallest adoption level at which at least one allocator's threshold has been crossed:
$$p_c(K, D) := \inf\Bigl\{ p \in [0, 1] : \sum_{i\,:\,\Delta_i(p;\,K,D) > 0} a_i \;>\; 0 \Bigr\}.$$
Above $p_c$, the M1--M4 feedbacks (Katz and Shapiro^15^) prevent Stay coalitions from reforming (§4.2). The endpoint is dominance in the network-effects sense, not full adoption $p = 1$. For each $(K, D)$, $\{p > p_c\}$ is coalition-proof against return-coalitions. As $(K_t, D_t)$ accumulate, $p_c$ shifts downward by monotone comparative statics (Milgrom and Shannon^18^): $p > p_c$ holds even when $p_t$ is flat, and the coalition-proof region expands (§4.3).

The model's claims are structural and directional: existence
of thresholds $\{p_i^*\}$, sign of comparative statics, and
direction of shift in $p_c$ under accumulating $(K_t, D_t)$.
It does not predict specific values, tipping times, or
saturation levels.

An adoption level $p$ is an equilibrium of the Exit Game when
no allocator, alone or in any group that holds together, gains
by switching.

# 4. Results

## 4.1 Monotone Exit Advantage

First, each actor's payoff gap from Stay to Exit widens as more actors exit. Every actor therefore has a threshold above which Exit becomes the only rational move. Hold the slowly varying state $(K, D)$ fixed throughout this subsection. By convention, $p_i^* = +\infty$ when $\Delta_i$ stays non-positive on $[0, 1]$.

::: proposition
**Proposition 1** (Monotone Exit Advantage). *Under Assumptions 1--4 and maintained conditions (M1)--(M4):*

1.  *The payoff differential $\Delta_i(p)$ is strictly increasing
    in $p$ for all player types.*

2.  *For each player $i$ there exists a threshold
    $p_i^* \in [0, 1] \cup \{+\infty\}$ such that Exit is the unique
    best response for $p > p_i^*$.*
:::

::: proof
*Proof.* Define the payoff differential and take its derivative in $p$:
$$\begin{aligned}
\Delta_i(p) &= u_i(\text{Exit}) - u_i(\text{Stay}) \\
            &= [R_B(p) - R_F] - \kappa_i K_A(p) - \rho_i R_A(p) + K_N(p), \\
\frac{d\Delta_i}{dp} &= R_B'(p) - \kappa_i K_A'(p) - \rho_i R_A'(p) + K_N'(p).
\end{aligned}$$

Under (M1)--(M4), each term is positive: $R_B'(p) > 0$ by (M1); $-\kappa_i K_A'(p) \geq 0$ by (M2); $-\rho_i R_A'(p) \geq 0$ by (M3); $K_N'(p) > 0$ by (M4).

Therefore $d\Delta_i/dp > 0$: the advantage of Exit rises strictly with $p$. Each player's threshold $p_i^* := \inf\{p \in [0, 1] : \Delta_i(p) > 0\}$ specializes the §3.5 definition with $(K, D)$ fixed. For actors with $p_i^* \in [0, 1]$, the intermediate value theorem applied to the continuous $\Delta_i$ delivers $\Delta_i(p_i^*) = 0$, and for $p > p_i^*$ Exit strictly dominates. ◻
:::

## 4.2 Coalition Instability

§4.1 gave each actor a threshold. The group implication is sharper: no Stay coalition is self-enforcing once any one member has crossed. Stay holdouts can attempt to enforce group cohesion through coercion, but will fail per the preference falsification remark below. The first defector profits unilaterally; the actors left behind face a higher exit advantage than before.

::: proposition
**Proposition 2** (Coalition Instability). *Under Assumption 2 and Property P3, no Stay coalition $C$
containing at least one actor with a crossed threshold
($p > p_j^*$ for some $j \in C$) is Nash-stable.*
:::

::: proof
*Proof.* Consider a coalition $C \subseteq N$ maintaining Stay. For $C$ to be Nash-stable, no member $j \in C$ can profit from unilateral defection. By Proposition 1, $u_j(\text{Exit}) > u_j(\text{Stay})$ when $p$ exceeds $p_j^*$. Property P3 (permissionless access) closes the institutional defection channel: no counterparty can refuse the trade and no clearing intermediary can foreclose settlement, so the only remaining friction is the regulatory cost already baked into each actor's threshold via $R_A$. Under Assumption 2, the crossed-threshold member defects: for at least one $j \in C$, $u_j(\text{defect from } C) > u_j(\text{remain in } C)$. The coalition therefore fails Nash. ◻
:::

::: remark
*Remark 1*. Proposition 2 covers coalitions with at least one crossed-threshold member. Permanent holdouts ($p_j^* = +\infty$), admitted by Proposition 1, lie outside its scope: no private reason to defect. The aggregate share of capital held for ideological rather than rational reasons (Assumption 2) is endogenous: minds are malleable and adapt to new information. The real-world case is regulatory coercion holding the coalition together: capital controls, fiduciary mandates, jurisdictional penalties. P1 limits what coercion can do. An asset controlled by secret information, not physical possession, can be seized only by forcing each holder to disclose it one at a time. Cost grows with the number of holders, not the size of any one holding. Preference falsification (Kuran^16^) then separates what holders say from what they do. Aggregate $p_t$ tracks what they do. Once enough private exits register, public Stay breaks.
:::

## 4.3 Ratchet

§4.1 gave each actor a threshold. §4.2 showed coalitions cannot hold once any one member crosses. §4.3 is not about individual players: per-period actions stay binary and reversible at the player level, and individual thresholds $p_i^*$ stay where the §3 payoff structure puts them at any given state. What moves is the slowly varying state $(K_t, D_t)$, and with it the critical mass $p_c$. Recognition $K_t$ does not unwind (Kuran^16^) and debasement $D_t$ does not reverse, so $p_c$ keeps falling. The result is not that any specific player is locked in; it is that the floor a returning Stay coalition would have to clear keeps dropping. Proposition 2 took the threshold profile as given. §4.3 lets thresholds move. As $(K_t, D_t)$ accumulate, each $p_i^*$ shifts downward, and $p_c$ shifts with the $p_i^*$. Two claims follow. First, above $p_c$ no returning Stay coalition can form. Any candidate coalition with a crossed-threshold member is broken by Proposition 2. Any candidate coalition without a crossed-threshold member contains only allocators not moving to Exit. Second, $p_c$ is non-increasing in $t$.

::: theorem
**Theorem 1** (Ratchet). *Under Assumptions 1--4, maintained conditions (M1)--(M4), and
the §3.5 sign conditions: (a) $\{p > p_c\}$
is coalition-proof^3,25^ against returning Stay coalitions. (b) Under
monotonic accumulation of $(K_t, D_t)$, the critical mass
$p_c(K_t, D_t)$ shifts monotonically downward in $t$.*
:::

::: proof
*Proof.* *(a) Coalition-proofness of $\{p > p_c\}$.* If $p > p_c(K, D)$, the crossed-threshold set
$$H(p) := \{i : \Delta_i(p; K, D) > 0\}$$
has positive capital weight. Any perturbation attempting to coordinate
a return to high-Stay above $p_c$ is a candidate Stay coalition
$C$ and falls into one of two cases. If $C \cap H(p)$ is
nonempty, Proposition 2 applies: the crossed-threshold member
defects under P3, so $C$ fails Nash and therefore fails BPW
self-enforcement. If $C \cap H(p)$
is empty, $C$ consists entirely of uncrossed-threshold capital. These actors already prefer Stay at the current $p$ and do not move toward Exit; no candidate Stay coalition expands above $p_c$.
The system is coalition-proof above $p_c$, with $\{p > p_c\}$ acting as the coordinating region for the high-adoption equilibrium. The dynamic part, in which the finite-threshold Stay pool shrinks as $(K_t, D_t)$ accumulate, expands the coalition-proof region. Drawdowns and cascade pauses along $p_t$ are admitted. A permanent stall would require two conditions to hold jointly: $p_t$ plateauing below $p_c$ indefinitely, and $p_c$ failing to fall. The second condition is ruled out by part (b).

*(b) Drift of $p_c$.* Because $p_c$ is defined from the individual thresholds, the §3.5 sign conditions transfer directly to $p_c$:
$$\frac{\partial p_i^*}{\partial K} \leq 0, \quad \frac{\partial p_i^*}{\partial D} \leq 0, \quad \frac{\partial p_c}{\partial K} \leq 0, \quad \frac{\partial p_c}{\partial D} \leq 0.$$
Under monotonic accumulation of $(K_t, D_t)$, $p_c(K_t, D_t)$ is non-increasing in $t$. ◻
:::

## 4.4 Bitcoin Exit Dominance

The three preceding results all hold simultaneously in the Exit Game under the same hypotheses. Their conjunction is the title claim.

::: theorem
**Theorem 2** (Bitcoin Exit Dominance). *Under the joint hypotheses of Propositions 1--2 and Theorem 1,
the capital-weighted adoption process satisfies all
three of:*

1.  *the payoff advantage of Exit over Stay is strictly increasing
    in $p$ for every player type (Proposition 1);*

2.  *no Stay coalition with at least one crossed-threshold
    member is self-enforcing (Proposition 2);*

3.  *$\{p > p_c\}$ is coalition-proof, and $p_c$ shifts monotonically downward under accumulating $(K_t, D_t)$ (Theorem 1).*
:::

::: proof
*Proof.* Proposition 1 gives (i). Proposition 2, with (i) supplying the
per-defector incentive, gives (ii). Theorem 1 gives (iii). Their
conjunction is the Bitcoin Exit Dominance claim. ◻
:::

# 5. Conclusion

The Exit Game treats capital allocators, not sovereign issuers, as the agents who decide what counts as settlement. The long-run outcome depends on whether an asset exists that no government issues. Once such an asset exists and satisfies P1--P7, the question is no longer whether allocators can leave the capturable system but whether continued debasement pushes adoption past $p_c$.

All capital allocators choose reserve assets on perceived risk and ability to store value. Since the Global Financial Crisis central banks have been accumulating gold. Smaller allocators have the unique opportunity to use higher risk tolerance and small size to shift first to any asset that does what gold does without gold's failures, at lower cost. §3.5 predicts that continued debasement keeps moving more allocators out of fiat.

A1--A4 are each independently load-bearing. A1 (persistent multipolarity) fails only if rival regimes coordinate and preference falsification no longer holds; rival seignorage is what holds the multipolar floor. A2 (rational self-interest) fails only if actors systematically forgo positive expected returns from unpunished defection. A3 (computational hardness) fails if either the underlying cryptography breaks and the protocol cannot replace it, or the economic incentive sustaining the mining subgame falls below the level §2 requires. A4 (persistence of network effects) fails only if the incumbency account of network goods is disproved.

The Bitcoin Exit Dominance claim is new and depends on two conditions outside this paper's scope. First, no other consensus ledger holds all of P1--P7: alternatives must either fail one of the properties or fail to draw adoption. Second, autonomous AI agents that need a settlement asset choose Bitcoin rather than invent a new settlement asset. A companion paper in preparation addresses the first across consensus ledgers; a second extends neutral settlement to autonomous agents.

#### Acknowledgements. {#acknowledgements. .unnumbered}

The author thanks the game-theoretic traditions this paper rests on. The equilibrium refinement program, from Nash and Selten through Bernheim, Peleg and Whinston, underwrites coalition-proofness. Katz and Shapiro and Milgrom and Shannon give the threshold dynamics their structure. Fudenberg and Tirole synthesize both. The Exit Game could not be stated without them. The author also acknowledges Thorstein Veblen, whose institutional-psychological tradition surfaces the work of Cantillon, Fisher, and Kuran as load-bearing for any model of how humans actually allocate capital. Thanks to the readers who flagged the Theorem 1 ratchet-form gap and the redundancy of the volatility apparatus in the preprint. Finally, the author thanks Lyn Alden for popularizing the debasement concept to a general audience; her work in accelerating the broader recognition of fiat debasement aids the Exit Game. The author also acknowledges Arthur Hayes, Jeff Booth, Fred Krueger, Lawrence Lepard, and others whose public writing has accelerated the bitcoin-specific debasement discourse this paper formalizes.

#### Author Contributions. {#author-contributions. .unnumbered}

S.H. is the sole author and conducted all aspects of the work,
including conceptualization, formal analysis, and writing.

#### Conflict of Interest. {#conflict-of-interest. .unnumbered}

The author holds bitcoin and operates bitcoingametheory.com.

  Symbol                Definition
  --------------------- -------------------------------------------------------------------------------
  $G$                   Settlement game $(N, S, u)$
  $N$                   Set of capital allocators
  $S_i$                 Strategy set: $\{\text{Exit}, \text{Stay}\}$
  $u_i$                 Utility function
  $a_i$                 Actor $i$'s share of total capturable capital, $\sum_i a_i = 1$
  $p_t$                 Aggregate capital share at Exit at time $t$: $\sum_{i \in \text{Exit}_t} a_i$
  $p_i^*(K, D)$         Threshold for player $i$ at slowly varying state $(K, D)$
  $p_c(K, D)$           Critical-mass threshold at $(K, D)$
  $K_t$                 Financial-repression recognition share, $K_t \in [0, 1]$
  $D_t$                 Debasement-intensity index, $D_t \in [0, \infty)$
  $\Delta_i(p; K, D)$   Payoff differential: $u_i(\text{Exit}) - u_i(\text{Stay})$ at $(K, D)$
  $R_B(p)$              Expected real return on neutral settlement asset
  $R_F$                 Expected real return on capturable assets
  $K_A(p)$              Conformity cost of acting before peers
  $R_A(p)$              Realization and regulatory friction (decreases as adoption normalizes)
  $K_N(p)$              Non-adoption penalty
  $\kappa_i, \rho_i$    Conformity weight, friction weight (all $> 0$ strictly)
  (M1)--(M4)            Monotonicity conditions (§3.4)

  : **Table A1.** Notation used throughout.

# 6. Notes and References

1.  Armstrong, S., Bostrom, N., Shulman, C. "Racing to the
    precipice: a model of artificial intelligence development."
    *AI & Society* **31.2** 201--206 (2016)
    <https://doi.org/10.1007/s00146-015-0590-y>

2.  Arslanalp, S., Eichengreen, B., Simpson-Bell, C. "Gold as
    international reserves: a barbarous relic no more?" *Journal of
    International Economics* **145** (2023)
    <https://doi.org/10.1016/j.jinteco.2023.103822>

3.  Bernheim, B. D., Peleg, B., Whinston, M. D.
    "Coalition-proof Nash equilibria I. Concepts." *Journal of
    Economic Theory* **42.1** 1--12 (1987)
    <https://doi.org/10.1016/0022-0531(87)90099-8>

4.  Biais, B., Bisière, C., Bouvard, M., Casamatta, C. "The
    blockchain folk theorem." *Review of Financial Studies*
    **32.5** 1662--1715 (2019)
    <https://doi.org/10.1093/rfs/hhy095>

5.  Brunnermeier, M. K., James, H., Landau, J.-P. "The
    digitalization of money." *NBER Working Paper*
    **26300** (2019) <https://doi.org/10.3386/w26300>

6.  Budish, E. "The economic limits of Bitcoin and the
    blockchain." *NBER Working Paper* **24717** (2018)
    <https://doi.org/10.3386/w24717>

7.  Cantillon, R. *Essai sur la nature du commerce en
    général* (c. 1755). English translation: *Essay on the Nature
    of Trade in General*, trans. Higgs, H. London: Macmillan 161--173 (1931).

8.  Chen, L. "A game-theoretic foundation for Bitcoin's
    price: a security-utility equilibrium." arXiv:2508.06071
    *Working Paper* (2025) <https://arxiv.org/abs/2508.06071>

9.  Eyal, I., Sirer, E. G. "Majority is not enough: Bitcoin
    mining is vulnerable." *Communications of the ACM*
    **61.7** 95--102 (2018)
    <https://doi.org/10.1145/3212998>

10. Feldstein, M. "Inflation and the stock market."
    *American Economic Review* **70.5** 839--847 (1980)
    <https://www.jstor.org/stable/1805772>

11. Fisher, I. *The Money Illusion*. New York: Adelphi
    Company 3--22 (1928).

12. Fudenberg, D., Tirole, J. *Game Theory*. Cambridge:
    MIT Press 3--7 (1991).

13. Garay, J., Kiayias, A., Leonardos, N. "The Bitcoin
    backbone protocol: analysis and applications." In
    *Advances in Cryptology -- EUROCRYPT 2015*,
    Lecture Notes in Computer Science **9057**,
    Springer 281--310 (2015)
    <https://doi.org/10.1007/978-3-662-46803-6_10>

14. International Monetary Fund. "World Economic Outlook
    Database." *IMF* (October 2024)
    <https://www.imf.org/en/Publications/WEO>

15. Katz, M. L., Shapiro, C. "Network externalities,
    competition, and compatibility." *American Economic
    Review* **75.3** 424--440 (1985)
    <https://www.jstor.org/stable/1814809>

16. Kuran, T. *Private Truths, Public Lies: The Social
    Consequences of Preference Falsification*. Cambridge: Harvard
    University Press 3--21 (1995).

17. Menger, C. "On the Origin of Money." *Economic Journal*
    **2.6** 239--255 (1892)
    <https://www.jstor.org/stable/2956146>

18. Milgrom, P., Shannon, C. "Monotone comparative statics."
    *Econometrica* **62.1** 157--180 (1994)
    <https://doi.org/10.2307/2951479>

19. Nakamoto, S. "Bitcoin: a peer-to-peer electronic cash
    system." *White paper* (2008)
    <https://bitcoin.org/bitcoin.pdf>

20. Powell, R. "Guns, butter, and anarchy." *American
    Political Science Review* **87.1** 115--132 (1993)
    <https://doi.org/10.2307/2938960>

21. Reinhart, C. M., Sbrancia, M. B. "The liquidation of
    government debt." *Economic Policy* **30.82**
    291--333 (2015) <https://doi.org/10.1093/epolic/eiv003>

22. Richardson, L. F. *Arms and Insecurity: A Mathematical
    Study of the Causes and Origins of War*. Pittsburgh: Boxwood
    Press / Chicago: Quadrangle Books 12--35 (1960).

23. Szabo, N. "Shelling Out: The Origins of Money."
    *Unenumerated* (2002)
    <https://nakamotoinstitute.org/library/shelling-out/>

24. *Note on Budish (§2).* The mining subgame imposes real costs that are a legitimate object of inefficiency analysis. The viewpoint of this paper is that those costs are not inefficiency in the rent-seeking sense but unforgeable costliness (Szabo^23^) sustaining neutral settlement: the specific property Bitcoin holders are paying to obtain. A full reconciliation with Budish's bound is beyond the scope of one paper and is left to subsequent work.

25. *Note on coalition-proofness vocabulary (§4.3).* The claim is coalition-proofness in the Bernheim-Peleg-Whinston sense, not stochastic stability in the Young or Kandori-Mailath-Rob sense; the paper does not specify a perturbed best-response dynamic.
