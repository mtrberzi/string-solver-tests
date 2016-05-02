(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (= y (Replace "mn_efg_k" "efg" "abcd")  ) )
(assert (= y "ab"  ) )

(check-sat)
(get-model)