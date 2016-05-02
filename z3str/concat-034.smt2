(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)


(assert (= (Concat (Concat x "b") y) (Concat z "abc") ) )


(check-sat)
(get-model)