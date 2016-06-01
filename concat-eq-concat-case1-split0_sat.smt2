(set-logic QF_S)
(set-info :status sat)

(declare-const X String)
(declare-const Y String)
(declare-const U String)
(declare-const V String)

(assert (= (Length X) 2))
(assert (= (Length U) 3))

(assert (= (Concat X Y) (Concat U V)))

(check-sat)
