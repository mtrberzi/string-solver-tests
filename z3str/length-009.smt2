(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const i Int)

(assert (= (Length "abcd") i) )
(assert (> (Length x) (+ i 1) ) )

(check-sat)
(get-model)
