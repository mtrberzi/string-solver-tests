(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const vi1 Int)


(assert (= x "aaaaefg" ) )
(assert (= vi1 (Indexof x "mln") ) )


(check-sat)
(get-model)
