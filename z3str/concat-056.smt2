(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat "abefef" x) 
           (Concat y "efefghi") ) )
(assert (= (Length y) 4) )

(check-sat)
(get-model)