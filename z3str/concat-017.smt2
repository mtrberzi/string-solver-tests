(set-logic QF_S)
(set-info :status sat)
(declare-const a String)

(assert (= (Concat a "llo") "testhello" ) )

(check-sat)
(get-model)