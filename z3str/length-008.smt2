(set-logic QF_S)
(set-info :status sat)
(declare-const x1 String)
(declare-const x2 String)
(declare-const x3 String)
(declare-const y String)

(assert (= y (Concat x1 (Concat x2 x3) ) ) )
(assert (= x2 "abc" ) )
(assert (= (Length x1) 1) )
(assert (= (Length y) 4) )


(check-sat)
(get-model)
