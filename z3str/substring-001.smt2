(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)

(assert (= "efg" (Substring x 1 3) ) )
(assert (= (Length x) 4) )


(check-sat)
(get-model)
