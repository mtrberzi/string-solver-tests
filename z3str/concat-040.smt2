(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat x y) (Concat z "abc") ) )
(assert (= (Length z) 1 ) )
(assert (= (Length x) 1 ) )

(check-sat)
(get-model)