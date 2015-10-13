(set-logic QF_S)
(set-info :status unsat)

(declare-const X String)

(assert (= (Length X) -1))

(check-sat)
