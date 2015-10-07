(set-logic QF_S)
(set-info :status sat)

(declare-const x String)

(assert (= (Length x) 3))

(check-sat)
