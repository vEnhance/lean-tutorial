import Mathlib.Tactic

/- EXAMPLE 3 (USAMO 2003/5)

Prove that for a,b,c > 0:

(2a+b+c)² / (2a²+(b+c)²) + (2b+c+a)² / (2b²+(c+a)²)
  + (2c+a+b)² / (2c²+(a+b)²) ≤ 8
-/

lemma key {a b c : ℝ} (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    (2*a+b+c)^2/(2*a^2+(b+c)^2) ≤ 4*a/(a+b+c) + 4/3 := by
  field_simp -- clears all denominators
  have h : 0 ≤ (2*a-b-c)^2 * (5*a+b+c) := by positivity
  linarith

theorem usamo2003 {a b c : ℝ} (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    (2*a+b+c)^2/(2*a^2+(b+c)^2) +
    (2*b+c+a)^2/(2*b^2+(c+a)^2) +
    (2*c+a+b)^2/(2*c^2+(a+b)^2) ≤ 8 := by
  have h1 := key ha hb hc
  have h2 := key hb hc ha
  have h3 := key hc ha hb
  have h := add_le_add (add_le_add h1 h2) h3
  clear h1 h2 h3
  convert! h
  clear h
  grind
