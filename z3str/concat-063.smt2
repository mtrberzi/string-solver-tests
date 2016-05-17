(set-logic QF_S)
(set-info :status unknown)
(declare-const X String)
(declare-const Y String)
(declare-const I String)
(declare-const J String)

(assert (= (Concat X Y) (Concat I (Concat "c" J) ) ) )
(assert (> (Length X) 0) )
(assert (> (Length Y) 1) )

(check-sat)
(get-model)