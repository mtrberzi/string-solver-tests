(set-logic QF_S)
(set-info :status unknown)
(declare-const i Int)
(declare-const X String)

(assert (= i (LastIndexof "12ab12ab" "12") ) )


(check-sat)
(get-model)
