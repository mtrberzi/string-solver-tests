(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat "abefef" x) (Concat y "efefghi") ) )

(check-sat)
(get-model)