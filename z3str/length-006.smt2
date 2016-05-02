(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)

(assert (= (Length (Concat x y)) 1) )

(check-sat)
(get-model)

