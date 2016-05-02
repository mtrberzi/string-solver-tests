(set-logic QF_S)
(set-info :status unknown)
(declare-const i Int)
(declare-const X String)

(assert (= i (Indexof "a" "ab") ) )


(check-sat)
(get-model)
