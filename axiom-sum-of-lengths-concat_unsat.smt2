(set-logic QF_S)
(set-info :status unsat)

(declare-const X String)
(declare-const Y String)

(assert (= (Length (Concat X Y)) 6))
(assert (= (Length X) 2))
(assert (= (Length Y) 3))

(check-sat)
