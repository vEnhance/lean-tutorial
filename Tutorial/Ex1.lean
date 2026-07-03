import Mathlib.Tactic

#check mul_assoc
#check mul_comm

/- EXAMPLE 1
Use mul_assoc and mul_comm to manually rewrite abc = cba
-/

theorem abc_conjecture (a b c : ℝ) : a * b * c = c * b * a := by
  sorry
