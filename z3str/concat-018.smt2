(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat x y) "testHello" ) )
(assert (= (Concat y z) "low" ) )
(assert (not (= y "" ) ) )

(check-sat)
(get-model)