(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)

(assert (not (Contains x "efg" ) ) )

(check-sat)
(get-model)