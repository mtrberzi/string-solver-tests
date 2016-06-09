(set-logic QF_S)
(set-info :status sat)
(declare-const x String)


(assert (= (Concat x "b" ) (Concat "a" x) ) )



(check-sat)
(get-model)