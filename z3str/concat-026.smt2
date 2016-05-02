(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)

(assert (= (Concat x y) (Concat m n) ) )
(assert (= (Length x) 1 ) )
(assert (= (Length m) 0 ) )

(check-sat)
(get-model)