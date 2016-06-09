(set-logic QF_S)
(set-info :status sat)
(declare-const x String)

(assert (not (Contains x "efg" ) ) )

(check-sat)
(get-model)
