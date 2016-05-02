(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat x "ab") (Concat y "iab") ) )


(check-sat)
(get-model)