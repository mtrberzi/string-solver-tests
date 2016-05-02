(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)

(assert (= "abcd" (Concat x y) ) )
(assert (>= (Length y) 3) )
(assert (>= (Length x) 1) )

(check-sat)
(get-model)
