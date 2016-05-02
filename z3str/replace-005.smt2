(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)

(assert (= y (Replace x "efg" "abcd")  ) )
(assert (= y "abcd") )

(check-sat)
(get-model)