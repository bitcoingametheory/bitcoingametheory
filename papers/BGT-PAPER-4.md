# Monetary Predator-Prey Dynamics: Enforcement Gridlock and Neutral Settlement Survival

**Sean Hash**
bitcoingametheory.com
sean@bitcoingametheory.com

**Date:** February 2026
**JEL Codes:** C72, C73, D74, E42, F33, G15, L14
**Keywords:** Bitcoin, Lotka-Volterra, enforcement gridlock, predator-prey dynamics, neutral settlement, coordination failure, coalition stability, game theory, network effects

---

## Abstract

This paper formalizes the survivability question for neutral settlement: *why can't enforcement actors coordinate to suppress it?* We model enforcement actors as "predators" (coordination taxers) and neutral settlement rail usage as "prey" using multi-predator Lotka-Volterra dynamics. When inter-predator competition coefficients are strictly positive—a condition guaranteed by geopolitical multipolarity—the interior equilibrium ensures prey survival ($x^* > 0$). We prove that no stable suppression coalition exists: for any proposed coalition, at least one member gains by defecting. Further, we show that each enforcer's dominant strategy is to preserve neutral rail access as a hedge against rival enforcers' monetary weaponization (the *predator hedging lemma*). Finally, we introduce *duration fragility inequalities* showing that equity valuations suffer terminal value collapse under AI-driven moat erosion, strengthening the case for scarcity-based settlement. These results complete the causal chain from Hash (2026a): the coordination failure in the exit game (Theorem 2) is not merely possible but *structurally guaranteed* by inter-predator competition.

---

## 1. Introduction

The Bitcoin Game Theory framework establishes that exit to neutral settlement is self-reinforcing (Hash, 2026a, Theorem 1), that coordination to stay fails (Theorem 2), and that the resulting equilibrium is absorbing (Theorem 3). The seven-property elimination (Hash, 2026b) shows Bitcoin is the unique survivor among candidate assets. The trust gradient (Hash, 2026c) extends the result to autonomous economic agents.

A critical gap remains: *why* does coordination to stay fail? The prior result (Hash, 2026a, Theorem 2) establishes that no enforcement mechanism exists to prevent exit, but does not explain the structural dynamics that guarantee this condition persists. This paper fills that gap.

We observe that enforcement actors—sovereigns imposing capital controls, corporations gatekeeping financial access, intermediaries extracting compliance rents—are not a monolithic bloc cooperating against Bitcoin. They are *competitors*, each taxing coordination in ways that interfere with other enforcers' interests. This competitive structure maps precisely onto multi-predator Lotka-Volterra population dynamics, where inter-species competition among predators guarantees prey survival.

### 1.1 Contributions

1. **Actor Taxonomy (Section 2):** We classify all monetary actors into coordination taxers (CT1-CT3) and exit-valve participants (EV1-EV3), identifying dual-role actors who simultaneously enforce and exit.

2. **Lotka-Volterra Formalization (Section 3):** We model the system as a multi-predator ecology and derive the interior equilibrium.

3. **Gridlock Wedge Theorem (Section 4):** We prove G1-G6: inter-predator competition permanently prevents coordinated suppression.

4. **Dominant Strategy Cascade (Section 5):** We prove the *predator hedging lemma* (S10): each enforcer's best response is to preserve the neutral rail.

5. **Duration Fragility (Section 6):** We prove that AI-driven moat erosion compresses equity terminal values, strengthening the marginal case for scarcity-based settlement.

6. **Falsification (Section 8):** We specify F7, the condition under which our results fail.

---

## 2. Actor Taxonomy

### 2.1 Coordination Taxers

Coordination taxers (CTs) are enforcement actors who extract value by controlling or taxing monetary flows. We identify three tiers:

| ID | Tier | Examples | Mechanism |
|----|------|----------|-----------|
| CT1 | Sovereign | National governments, central banks, sanctions agencies | Monetary policy, capital controls, legal coercion |
| CT2 | Corporate | Banks, asset managers, payment processors, regulators | Intermediation fees, compliance gatekeeping, platform lock-in |
| CT3 | Intermediary | Prime brokers, mining pools, payment routers | Collateral yield, pool fees, routing fees |

### 2.2 Exit-Valve Participants

Exit-valve participants (EVs) benefit from access to a neutral settlement rail outside the enforcement perimeter:

| ID | Tier | Examples | Mechanism |
|----|------|----------|-----------|
| EV1 | Retail | Savers, remittance users, unbanked populations | Inflation escape, bank freeze bypass, cross-border settlement |
| EV2 | Tier-2 Sovereign | Rival powers, sanctioned states, small nations | Dollar alternative, sanctions evasion, reserve diversification |
| EV3 | Corporate | Energy producers, miners, AI agents | Energy monetization, stranded asset conversion, autonomous settlement |

### 2.3 Dual-Role Actors

Many actors simultaneously tax coordination *and* use the neutral rail. This dual-role behavior is the mechanism behind the Gridlock Wedge:

- **United States (CT1 + EV2):** Enforces dollar hegemony through SWIFT and sanctions while maintaining a strategic Bitcoin reserve as a hedge against de-dollarization.
- **China (CT1 + EV2):** Imposes capital controls and bans domestic crypto trading while using cryptocurrency for cross-border trade settlement.
- **Russia/Iran (CT1 + EV2):** Nominally restrict domestic use while using Bitcoin for sanctions evasion in international trade.
- **Banks (CT2 + EV3):** Gatekeep fiat access while building custody and trading infrastructure to capture Bitcoin-denominated revenue.

> **Terminological note:** In informal discussion, coordination taxers are sometimes called "cats" and exit-valve participants "mice," referencing the familiar cat-and-mouse enforcement dynamic. We use formal terms throughout. See BGT-0009 for the complete 42-actor mapping.

---

## 3. Model: Multi-Predator Lotka-Volterra System

### 3.1 Equations

Let $x(t)$ denote neutral rail usage (prey population proxy) and $y_k(t)$ the enforcement intensity of actor $k$:

$$\frac{dx}{dt} = rx\left(1 - \frac{x}{K}\right) - \sum_k a_k \cdot x \cdot y_k$$

$$\frac{dy_k}{dt} = b_k \cdot x \cdot y_k - d_k \cdot y_k - \sum_{j \neq k} \varepsilon_{jk} \cdot y_j \cdot y_k$$

Where:
- $r$ = intrinsic growth rate of neutral rail usage
- $K$ = carrying capacity (maximum adoption)
- $a_k$ = suppression efficiency of enforcer $k$
- $b_k$ = benefit enforcer $k$ extracts from enforcement
- $d_k$ = cost/decay rate of enforcement effort
- $\varepsilon_{jk}$ = inter-predator competition coefficient (rival friction between enforcers $j$ and $k$)

### 3.2 Key Parameter: Inter-Predator Competition

The critical parameter is $\varepsilon_{jk} > 0$: the degree to which enforcer $j$'s actions interfere with enforcer $k$'s enforcement capacity. In the monetary context:

- **US sanctions vs. China's capital controls:** US sanctions push sanctioned parties toward Bitcoin, undermining China's ability to enforce capital controls via traditional channels.
- **EU regulation vs. Singapore openness:** Restrictive EU frameworks push capital to permissive jurisdictions, undermining enforcement coherence.
- **Bank compliance vs. DeFi:** Bank gatekeeping creates demand for non-custodial alternatives, expanding the enforcement perimeter faster than compliance can track.

The condition $\varepsilon_{jk} > 0$ is not an assumption—it is an empirical observation guaranteed by geopolitical multipolarity (AX1/W1 in Hash, 2026a).

---

## 4. The Gridlock Wedge Theorem (G1-G6)

**Theorem (Gridlock Wedge).** Under multipolarity ($n_{CT} \geq 3$, $\varepsilon_{jk} > 0$ for all $j \neq k$), the neutral settlement rail survives at a positive interior equilibrium $x^* > 0$, and no stable suppression coalition exists.

### Proof Structure

**G1 (Multiple Enforcers Exist).** Empirically, at least three tier-1 enforcement actors (US, EU, China) operate simultaneously at all observed time periods. This satisfies $n_{CT} \geq 3$.

**G2 (Inter-Predator Competition Is Positive).** For all enforcer pairs $j \neq k$, $\varepsilon_{jk} > 0$. Each enforcer's actions create externalities that interfere with rivals' enforcement capacity. Sanctions push capital to rival jurisdictions; regulation pushes innovation to permissive environments; compliance requirements push users to non-custodial alternatives.

**G3 (Prey Survives).** At interior equilibrium:

$$x^* = K\left(1 - \frac{\sum_k a_k y_k^*}{r}\right) > 0$$

Because inter-predator friction prevents any $y_k$ from reaching the suppression threshold where $\sum_k a_k y_k^* / r \geq 1$. Each enforcer's capacity is bounded by rival interference.

**G4 (Unilateral Suppression Preference).** Each enforcer prefers that rivals *not* suppress:

$$U_k(\text{suppress} \wedge \text{rival free}) > U_k(\text{suppress} \wedge \text{rival suppress})$$

Unilateral suppression captures more enforcement rent than shared suppression, which splits the benefit across coalition members.

**G5 (Dominant Strategy Cascade).** Given that rivals preserve the rail, each enforcer's best response is to also preserve:

$$\forall k: U_k(\text{hedge}) > U_k(\text{ban})$$

This is the *predator hedging lemma* (see Section 5). $\square$

**G6 (No Stable Coalition).** For any proposed suppression coalition $C \subseteq \{1, \ldots, n\}$:

$$\nexists C: \forall k \in C, \; U_k(C) \geq U_k(\text{defect})$$

At least one member gains by defecting—accessing the rail while rivals suppress, capturing both the hedge value and the fleeing capital. This is a direct application of the multi-actor prisoner's dilemma under positive inter-predator competition. $\square$

---

## 5. The Dominant Strategy Cascade (Predator Hedging Lemma)

**Lemma S10 (Predator Hedging).** *Competing coordination taxers preserve the neutral settlement rail to hedge against rival taxers' monetary weaponization. Suppression is therefore never unanimous.*

### 5.1 Mechanism

Consider enforcer $k$ deciding whether to ban or preserve Bitcoin access:

**If $k$ bans:**
- Loses hedge against rival enforcers' monetary weaponization (SWIFT exclusion, sanctions, capital controls)
- Cannot access neutral settlement when rivals weaponize their monetary systems against $k$
- If rivals also ban, splits enforcement rent but both lose hedge (unstable)
- If rivals preserve, $k$ is strategically disadvantaged

**If $k$ preserves (hedges):**
- Maintains option value against rival weaponization
- Captures compliance revenue from supervised Bitcoin activity
- If rivals also preserve, equilibrium holds
- If rivals ban, $k$ captures all fleeing capital AND maintains hedge

The payoff matrix reveals that "preserve" weakly dominates "ban" for every enforcer, regardless of rivals' choices. This generates a dominant strategy cascade: once any enforcer preserves, all others' best response is to preserve.

### 5.2 Empirical Validation

- **Russia (2022-present):** Despite nominally restricting crypto domestically, Russia authorized Bitcoin for international settlements to evade Western sanctions—classic CT1 + EV2 dual-role behavior.
- **El Salvador (2021-present):** Small sovereign adopts Bitcoin as legal tender, demonstrating EV2 first-mover behavior; IMF pressure fails to reverse.
- **United States (2024-present):** Establishes strategic Bitcoin reserve while maintaining SEC enforcement—CT1 + EV2 simultaneously.

---

## 6. Duration Fragility: Equity Predation's Limits

### 6.1 Moat Half-Life Under AI Acceleration

The steelman case for equity over Bitcoin relies on AI creating durable monopoly moats. We show this assumption fails under moat erosion dynamics.

**Definition.** Let $H(t)$ denote the competitive moat half-life of a technology firm at time $t$:

$$H(t) = H_0 \cdot e^{-\alpha t}$$

where $\alpha > 0$ captures the rate of AI-driven competitive acceleration. Historical base rate: $H_0 \approx 15$ years (pre-AI technology moats). Under AI acceleration ($\alpha \approx 0.20$), projected $H \approx 3$-$5$ years.

### 6.2 Multiple Compression

Even with stable current earnings $E_t$, equity terminal value collapses:

$$P/E_t = \frac{E_t}{r + \alpha}$$

A stock earning \$10/share with discount rate $r = 0.10$ and zero moat erosion ($\alpha = 0$) trades at $P/E = 10$. Adding $\alpha = 0.20$ (3.5-year moat half-life) compresses $P/E$ to 3.3—a 67% valuation haircut with *identical* current earnings.

### 6.3 The 100x Compression Scenario

If AI commoditization accelerates beyond historical precedent ($\alpha > 0.50$), dominant firms face $>90\%$ valuation haircuts before earnings actually decline. The fiber-optic precedent (1997-2010: margins from 60% to 15%) demonstrates this pattern at infrastructure scale.

### 6.4 Implication for Settlement Asset Selection

Bitcoin has no earnings and therefore no duration fragility. Its value derives entirely from scarcity and network effects—properties immune to competitive moat erosion. For long-duration wealth preservation (generational time horizons), the absence of duration fragility is a structural advantage over any earnings-dependent asset.

---

## 7. Empirical Evidence

| Observation | CT/EV Classification | Supports |
|---|---|---|
| Russia authorizes crypto for international trade (2024) | CT1 + EV2 | S10, G5 |
| Iran uses Bitcoin mining for energy monetization (2020-) | CT1 + EV3 | S10, G4 |
| El Salvador accumulates 6,000+ BTC (2021-2025) | EV2 | E4, K1 |
| US establishes strategic Bitcoin reserve (2024-) | CT1 + EV2 | S10, G5 |
| China bans crypto trading but mines hash (2021-) | CT1 + EV2/EV3 | G2, G4 |
| NVIDIA P/E compression from 70x to 30x (2023-2026) | — | Qc8, Qc9 |
| Fiber-optic margins: 60% to 15% (1997-2010) | — | Qc8 precedent |
| Singapore issues 13 DPT licenses (2024) | EV2 | G2, G4 |

---

## 8. Falsification

**F7 (Gridlock Closes).** The results of this paper are falsified if:

*Synchronized global suppression eliminates all enforcement gaps AND permanent tier-1 capability lockout prevents re-emergence.*

Specifically, F7 requires:
1. All tier-1 enforcers (US, EU, China minimum) simultaneously and permanently suppress Bitcoin access
2. No tier-2 sovereign defects to capture fleeing capital
3. Technical capability to run nodes and mine is permanently eliminated (not merely pushed underground)
4. The above conditions persist indefinitely (not merely during a crisis period)

F7 subsumes and strengthens F4 (stable cartel): it requires not just a cartel but synchronized action with permanent capability destruction. The inter-predator competition dynamics ($\varepsilon_{jk} > 0$) must become zero—meaning geopolitical competition itself must end.

---

## 9. Limitations

1. **Parameter estimation:** The Lotka-Volterra coefficients ($a_k$, $b_k$, $d_k$, $\varepsilon_{jk}$) are modeled qualitatively. Empirical calibration would strengthen the results but is not required for the qualitative survival conclusion ($x^* > 0$).

2. **Regime changes:** The model assumes multipolarity persists. If W1 (Open World) transitions to W2 (Closed World—a single global hegemon), the inter-predator competition coefficients collapse to zero, and F7 becomes possible.

3. **Duration fragility:** The moat erosion rate $\alpha$ is estimated from limited historical precedent. If AI creates genuinely permanent moats (unprecedented in technological history), the equity compression argument weakens.

4. **Biological analogy limits:** Monetary enforcement dynamics differ from biological predator-prey in that actors are strategic (game-theoretic) rather than mechanistic. The Lotka-Volterra structure captures the competitive dynamics but not the full strategic complexity.

---

## 10. Conclusion

The enforcement coordination problem is not merely a prisoner's dilemma—it is a structurally guaranteed gridlock arising from inter-predator competition. Competing enforcement actors cannot suppress the neutral settlement rail because each preserves it as a hedge against rivals. This result completes the causal chain:

1. Exit is self-reinforcing (Hash, 2026a, Theorem 1)
2. Coordination to stay fails **because enforcement actors are in permanent gridlock** (this paper, G1-G6)
3. The resulting equilibrium is absorbing (Hash, 2026a, Theorem 3)
4. Bitcoin is the unique survivor of seven-property elimination (Hash, 2026b)
5. The result extends to autonomous agents at zero trust (Hash, 2026c)

The correct framing for Bitcoin's survivability is not eradication risk but *containment*. Enforcement actors will regulate, tax, and monitor Bitcoin activity at the application layer—but they cannot and will not eliminate the settlement layer, because doing so would surrender their hedge against rival enforcers. The neutral rail survives not despite enforcement but *because of* the competitive structure of enforcement itself.

---

## References

Chainalysis (2024). The 2024 Crypto Crime Report.

Hash (2026a). Bitcoin exit dominance in monetary coordination games. Working
paper, bitcoingametheory.com.

Hash (2026b). Bitcoin as unique neutral settlement: A seven-property
elimination. Working paper, bitcoingametheory.com.

Hash (2026c). Settlement at zero trust: Bitcoin and autonomous economic
agents. Working paper, bitcoingametheory.com.

May, R. M. (1973). *Stability and Complexity in Model Ecosystems*. Princeton
University Press.

Volterra, V. (1928). Variations and fluctuations of the number of
individuals in animal species living together. *ICES Journal of Marine
Science*, 3(1), 3-51.

---

## Appendix: Notation

| Symbol | Definition |
|--------|-----------|
| $x(t)$ | Neutral rail usage (prey population proxy) |
| $y_k(t)$ | Enforcement intensity of actor $k$ |
| $r$ | Intrinsic growth rate of neutral rail usage |
| $K$ | Carrying capacity (maximum adoption) |
| $a_k$ | Suppression efficiency of enforcer $k$ |
| $b_k$ | Benefit enforcer $k$ extracts from enforcement |
| $d_k$ | Cost/decay rate of enforcement effort |
| $\varepsilon_{jk}$ | Inter-predator competition coefficient |
| $H(t)$ | Competitive moat half-life at time $t$ |
| $\alpha$ | Rate of AI-driven moat erosion |
| CT1-CT3 | Coordination taxer tiers (sovereign, corporate, intermediary) |
| EV1-EV3 | Exit-valve participant tiers (retail, tier-2 sovereign, corporate) |
