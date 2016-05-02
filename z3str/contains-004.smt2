(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)

(assert (not (Contains x "efg" ) ) )
(assert (Contains x "ef" ) )


(check-sat)
(get-model)
