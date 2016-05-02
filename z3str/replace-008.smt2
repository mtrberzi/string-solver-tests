(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (= y (Replace "mn_efgefg_k" "efg" "abcd")  ) )


(check-sat)
(get-model)