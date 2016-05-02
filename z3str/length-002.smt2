(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)

(assert (or (= x "f") (= x "abcd") ) )
(assert (> (Length x) 3) )
(assert (< (Length x) 5) )

(check-sat)
(get-model)
