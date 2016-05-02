(set-logic QF_S)
(set-info :status unknown)
(declare-const i Int)
(declare-const X String)

(assert (= i (LastIndexof X "abcd") ) )
(assert (= X "abcd1234abc" ) )

(check-sat)
(get-model)
