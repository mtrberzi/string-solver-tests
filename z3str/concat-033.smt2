(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)


(assert (= (str.++ x y) (str.++ z "abc") ) )
;(assert (= (str.len m) 1 ) )
;(assert (= (str.len n) 1 ) )
;(assert (= (str.len y) 1 ) )
;(assert (= (str.len x) 1 ) )

(check-sat)
(get-model)