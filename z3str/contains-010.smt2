(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)

(assert (Contains x "efg" ) )
(assert (Contains x "ef" ) )
(assert (< (Length x) 5) )


(check-sat)
(get-model)