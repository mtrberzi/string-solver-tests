(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat x y) (Concat "abc" z) ) )
(assert (= (Length x) 2 ) )
(assert (= (Length y) 4 ) )
(assert (= (Length z) 1 ) )

(check-sat)
(get-model)