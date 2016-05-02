(set-logic QF_S)
(set-info :status unknown)
(declare-const vi1 Int)
(declare-const vi2 Int)
(declare-const x String)


(assert (= "efg" (Substring x 1 3) ) )
(assert (= "bef" (Substring x 0 3) ) )



(check-sat)
(get-model)
