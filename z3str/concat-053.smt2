(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat "abcefgh" x) (Concat "abc" y) ) )
(assert (= (Length x) 1 ) )

(check-sat)
(get-model)