(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat z "b") (Concat x y) ) )
(assert (= z "") )

(check-sat)
(get-model)