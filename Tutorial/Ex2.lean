import Mathlib.Tactic

/- EXAMPLE 2 (USAMO 1973/4)

If x, y, z are complex numbers such that
  x + y + z = 3
  x² + y² + z² = 3
  x³ + y³ + z³ = 3
show that x = y = z = 1.
-/

theorem usamo1973_4 (x y z : ℂ) :
  (
    x + y + z = 3 ∧
    x^2 + y^2 + z^2 = 3 ∧
    x^3 + y^3 + z^3 = 3
  ) → (x = 1 ∧ y = 1 ∧ z = 1) := by
  grind =>
    cases #0ac7
    · ring
    · cases #e2d9 <;> ring
