(set-logic QF_S)
(set-info :status unknown)
(declare-const i Int)

(assert (= i (Indexof2 "abc" "b" 1) ) )

(check-sat)
(get-model)