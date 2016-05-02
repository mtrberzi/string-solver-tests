(set-logic QF_S)
(set-info :status unknown)
(declare-const X String)
(declare-const Y String)

(assert (= (Concat X (Concat "ab" Y ) ) (Concat Y (Concat "ba" X ) ) ) )
(assert (= 2 (Length X) ) )

(check-sat)
(get-model)