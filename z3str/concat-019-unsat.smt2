(set-logic QF_S)
(set-info :status unsat)
(declare-const a String)

(assert (= (Concat a "testhello") "test" ) )

(check-sat)
(get-model)