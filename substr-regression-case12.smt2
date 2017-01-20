(set-info :status sat)

(declare-const X String)
(declare-const S String)
(declare-const Pos Int)
(declare-const Len Int)

(assert (= S "abcdef"))
(assert (> Pos 6))
(assert (= X (Substring S Pos Len)))

(check-sat)
