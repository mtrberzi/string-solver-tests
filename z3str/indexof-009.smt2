(set-logic QF_S)
(set-info :status unknown)
(declare-const i Int)
(declare-const X String)

(assert (= i (Indexof "original" X) ) )
(assert (= (Length X) 7))
(assert (>= i 1) )


(check-sat)
(get-model)
