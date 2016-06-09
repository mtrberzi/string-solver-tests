(set-logic QF_S)
(set-info :status sat)
(declare-const i Int)
(declare-const X String)

(assert (= i (LastIndexof "12ab12ab" "mn") ) )


(check-sat)
(get-model)
