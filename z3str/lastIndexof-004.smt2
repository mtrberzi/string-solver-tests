(set-logic QF_S)
(set-info :status sat)
(declare-const i Int)
(declare-const X String)

(assert (= i (LastIndexof X "abcd") ) )
(assert (= X "abcd1234abcd" ) )

(check-sat)
(get-model)
