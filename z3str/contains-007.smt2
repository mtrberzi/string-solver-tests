(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const bv Bool)

(assert (= bv (Contains x "ef_k" ) ) )
(assert (= x "efk" ) )


(check-sat)
(get-model)
