import Mathlib.Tactic

/- EXAMPLE 3 (USAMO 2003/5)

Prove that for a,b,c > 0:

(2a+b+c)² / (2a²+(b+c)²) + (2b+c+a)² / (2b²+(c+a)²)
  + (2c+a+b)² / (2c²+(a+b)²) ≤ 8
-/

theorem usamo2003 {a b c : ℝ} (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    (2*a+b+c)^2/(2*a^2+(b+c)^2) +
    (2*b+c+a)^2/(2*b^2+(c+a)^2) +
    (2*c+a+b)^2/(2*c^2+(a+b)^2) ≤ 8 := by
  sorry
