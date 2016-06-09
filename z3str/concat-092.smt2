(set-logic QF_S)
(set-info :status sat)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y String)


(assert (= y (Concat (Concat x1 "b" ) (Concat "a" x2) ) ) )



(check-sat)
(get-model)