(set-logic QF_S)
(set-info :status sat)

(declare-const x String)
(declare-const y String)

(assert (= (Concat x y) ""))

(check-sat)
