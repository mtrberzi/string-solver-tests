(set-logic QF_S)
(set-info :status unknown)
(declare-const i Int)
(declare-const x String)

(assert (>= 3 ( Length x ) ) )


(check-sat)
(get-model)