(set-logic QF_S)
(set-info :status unknown)
(declare-const X String)
(declare-const Y String)
(declare-const I String)
(declare-const J String)

(assert (= (Concat "a" (Concat X Y) ) (Concat I (Concat "c" J) ) ) )

(check-sat)
(get-model)