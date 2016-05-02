(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)


(assert (= (Concat "abc" x) (Concat "abcefg" y) ) )

(check-sat)
(get-model)