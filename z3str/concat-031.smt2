(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)

(assert (= (Concat x y) (Concat m n) ) )
(assert (= (Length m) 0 ) )
(assert (= (Length n) 0 ) )

(check-sat)
(get-model)