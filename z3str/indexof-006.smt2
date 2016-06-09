(set-logic QF_S)
(set-info :status sat)
(declare-const i Int)

(assert (= i (Indexof "abcdefg" "hh") ) )

(check-sat)
(get-model)
