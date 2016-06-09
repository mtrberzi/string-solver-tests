(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat x y) (Concat z "abc") ) )
(assert (= (Length y) 1 ) )
(assert (= (Length x) 3 ) )

(check-sat)
(get-model)