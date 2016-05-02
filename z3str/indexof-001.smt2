(set-logic QF_S)
(set-info :status unknown)
(declare-const i Int)

(assert (= i (Indexof "abc" "b") ) )

(check-sat)
(get-model)
