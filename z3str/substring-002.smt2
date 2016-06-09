(set-logic QF_S)
(set-info :status sat)
(declare-const vi1 Int)
(declare-const vi2 Int)
(declare-const x String)


(assert (= "efgh" (Substring x vi1 vi2) ) )
(assert (= (Length x) 4) )


(check-sat)
(get-model)
