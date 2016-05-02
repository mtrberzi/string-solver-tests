(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const i Int)


(assert (= "b" (CharAt x i) ) )

(assert (and (>= i 4) (< i (Length x))))

(assert (< (Length x) 7))

(assert (> (Length x) 2))


(check-sat)
(get-model)
