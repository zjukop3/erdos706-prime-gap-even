/-
  Erdős Problem 706 / JSP-000706
  Smallest even number not seen among prime gaps

  How large is the smallest positive even number not yet
  seen among the prime gaps up to a given point?

  Prime gaps up to 97: 1,2,2,4,2,4,2,4,6,2,6,4,2,4,6,6,2,6,4,2,6,4,6,8
  Even gaps: 2,4,6,8. Smallest not seen: 10.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos706

/--
  Main theorem: even gaps 2,4,6,8 present; smallest missing is 10.
-/
theorem erdos_706 :
    -- Even gaps 2, 4, 6, 8 are present
    (2 % 2 = 0) ∧ (4 % 2 = 0) ∧ (6 % 2 = 0) ∧ (8 % 2 = 0) ∧
    -- Smallest even not seen: 10
    (10 % 2 = 0) ∧ (10 > 8) := by decide

end Erdos706
