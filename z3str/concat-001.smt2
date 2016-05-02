(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y1 String)
(declare-const y2 String)


(assert (= x ( Concat ( Concat "te" y1 ) ( Concat "st" y2 ) ) ) )


(check-sat)
(get-model)