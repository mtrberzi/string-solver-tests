(set-logic QF_S)
(set-info :status unsat)
(declare-const i Int)
(declare-const X String)

(assert (= i (Indexof X "ab") ) )
(assert (= i 0 ) )
(assert (= (Length X) 0 ) )


(check-sat)
(get-model)
