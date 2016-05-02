(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)


(assert (= (Concat x y) (Concat z "abc") ) )
;(assert (= (Length m) 1 ) )
;(assert (= (Length n) 1 ) )
;(assert (= (Length y) 1 ) )
;(assert (= (Length x) 1 ) )

(check-sat)
(get-model)