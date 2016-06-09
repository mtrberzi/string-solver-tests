(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (= y x) )
(assert (= (Length y) 4) )
(assert (or (= x "fg") (= x "abcd") ) )
;(assert (<= (Length y) 5) )

(check-sat)
(get-model)
