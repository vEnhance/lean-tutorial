-- This module serves as the root of the `Tutorial` library.
-- Import modules here that should be built as part of the library.
import Tutorial.Basic

import Mathlib.Tactic

#check mul_assoc
#check mul_comm

/- EXAMPLE 1
Use mul_assoc and mul_comm to manually rewrite abc = cba
-/

theorem abc_conjecture (a b c : ℝ) : a * b * c = c * b * a := by
  sorry

/- EXAMPLE 2 (USAMO 1973/4)

If x, y, z are complex numbers such that
  x + y + z = 3
  x² + y² + z² = 3
  x³ + y³ + z³ = 3
show that x = y = z = 1.
-/

/- theorem usamo1973_4 (x y z : ℂ) : ... -/

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

/- EXAMPLE 4

In a d-regular simple graph on n vertices, there are n d / 2 edges.
-/

/- theorem regular_degree_sum : -/
