(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat x y) z ) )
(assert (or (= z "abcdef") (= z "aaaa") (= z "bbbb") ) )
(assert (or (= x "e") (= x "f") (= x "abcde") ) )

(check-sat)
(get-model)