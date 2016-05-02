(set-logic QF_S)
(set-info :status unknown)
(declare-const y String)
(declare-const z String)

(assert (= z "mn_efg_k") )
(assert (= y (Replace "mn_efg_k" "gfe" "abcd")  ) )

(check-sat)
(get-model)