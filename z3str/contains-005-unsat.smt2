(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)

(assert (not (Contains x "ef" ) ) )
(assert (Contains x "efg" ) )


(check-sat)
(get-model)
