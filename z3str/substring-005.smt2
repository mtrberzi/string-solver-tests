(set-logic QF_S)
(set-info :status unknown)
(declare-const vi1 Int)
(declare-const vi2 Int)
(declare-const vi3 Int)
(declare-const vi4 Int)
(declare-const vi5 Int)
(declare-const x String)


(assert (= "efg" (Substring x vi1 vi2) ) )
(assert (= "bef" (Substring x vi3 vi4) ) )
(assert (= "*v*" (Substring x vi5 3) ) )
(assert (<= (Length x) 9))



(check-sat)
(get-model)