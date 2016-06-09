(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const v1 String)
(declare-const v2 String)

(assert (= (Concat (Concat v1 v2) "e") (Concat x y) ) )

(check-sat)
(get-model)