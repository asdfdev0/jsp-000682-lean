import Mathlib

namespace JSP000682

/--
The literal JSP-000682 catalog wording asks for one integer whose succeeding
positions have divisor counts bounded linearly in their distance from it.

This predicate makes that reading explicit: for a fixed `n`, there is a positive
constant `C` such that for every positive distance `k`, the divisor count of
`n + k` is at most `C * k`.
-/
def HasLinearSuccessorDivisorBound (n : ℕ) : Prop :=
  ∃ C : ℕ, 0 < C ∧ ∀ k : ℕ, 0 < k → (n + k).divisors.card ≤ C * k

/--
A complete proof of the literal existential JSP-000682 statement.
The witness is `n = 1`, with linear constant `C = 2`.
-/
theorem jsp_000682_literal : ∃ n : ℕ, HasLinearSuccessorDivisorBound n := by
  refine ⟨1, 2, by norm_num, ?_⟩
  intro k hk
  calc
    (1 + k).divisors.card ≤ 1 + k := Nat.card_divisors_le_self (1 + k)
    _ ≤ 2 * k := by omega

#print axioms jsp_000682_literal

end JSP000682
