(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)

(assert (= y (Replace x "efg" "abcd")  ) )
(assert (= y "abcd") )
(assert (= x "efg") )

(check-sat)
(get-model)