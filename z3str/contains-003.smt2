(set-logic QF_S)
(set-info :status sat)
(declare-const x String)

(assert (Contains x "efg" ) )
(assert (Contains x "ef" ) )

(check-sat)
(get-model)
