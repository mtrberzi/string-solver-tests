(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat "abc" x) (Concat "abc" y) ) )
(assert (= (Length x) 1 ) )

(check-sat)
(get-model)