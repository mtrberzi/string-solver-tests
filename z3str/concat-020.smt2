(set-logic QF_S)
(set-info :status unknown)
(declare-const a String)
(declare-const b String)

(assert (= (Concat a b) "" ) )

(check-sat)
(get-model)