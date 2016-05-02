(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= (Concat "abkefgh" x) (Concat "abc" y) ) )

(check-sat)
(get-model)