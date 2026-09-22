# JSP-000682 Lean formalization

This repository formalizes the literal wording currently published for JSP-000682 in `TheJustinSunPrize/awards`:

> Is there an integer whose succeeding positions have divisor counts bounded linearly in their distance from it?

The formal statement is `JSP000682.jsp_000682_literal` in `JSP000682/Solution.lean`.

It proves that `n = 1` works with linear constant `C = 2`: for every positive integer `k`,

`τ(1 + k) ≤ 1 + k ≤ 2k`.

The first inequality is Mathlib's `Nat.card_divisors_le_self`.

## Important scope note

This formalization intentionally matches the literal existential JSP catalog wording. It does **not** claim to solve the stronger Erdős #826 infinitude problem, which asks for infinitely many such integers (with the relevant uniform bound). The corresponding awards submission explicitly discloses this statement mismatch.

## Reproduction

Toolchain: Lean 4.33.0.

Mathlib is pinned in `lakefile.lean` to commit `db584cd6d46c92f209a44c0f1c829460d327499d`.

```bash
lake update
lake build
lake env lean JSP000682/Solution.lean
```

The source includes:

```lean
#print axioms JSP000682.jsp_000682_literal
```

so the axiom audit is printed by the final command.
