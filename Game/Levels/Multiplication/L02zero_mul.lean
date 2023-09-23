import Game.Levels.Multiplication.L01mul_one

World "Multiplication"
Level 2
Title "zero_mul"

open MyNat

Introduction
"
We're going for `mul_comm x y : x * y = y * x`,
and we want to prove it by induction. The zero
case will need `mul_zero` (which we have)
and `zero_mul` (which we don't), so let's
start there.
"

LemmaDoc MyNat.zero_mul as "zero_mul" in "Mul" "
`zero_mul x` is the proof that `0 * x = x`.

Note: `zero_mul` is a `simp` lemma.
"

/-- For all natural numbers $m$, we have $ 0 \\cdot m = 0$. -/
Statement MyNat.zero_mul
    (m : ℕ) : 0 * m = 0 := by
  induction m with d hd
  · rw [mul_zero]
    rfl
  · rw [mul_succ]
    rw [hd]
    rw [add_zero]
    rfl
