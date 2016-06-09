(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)


(assert (= (Concat x y) (Concat z "abc") ) )
(assert (= (Length z) 0 ) )
(assert (= (Length x) 2 ) )


(check-sat)
(get-model)