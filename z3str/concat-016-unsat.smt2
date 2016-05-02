(set-logic QF_S)
(set-info :status unknown)
(declare-const a String)

(assert (= (Concat "tesk" a) "testhello" ) )

(check-sat)
(get-model)