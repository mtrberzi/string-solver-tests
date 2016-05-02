(set-logic QF_S)
(set-info :status unknown)
(declare-const X String)
(declare-const ts0 String)
(declare-const ts1 String)
(declare-const ts2 String)

(assert (= X (Concat ts0 (Concat "abc" ts2 ) ) ) )
(assert (= X "abc") )


(check-sat)
(get-model)