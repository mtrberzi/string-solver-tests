(set-logic QF_S)
(set-info :status unknown)
(declare-const a String)
(declare-const b String)
(declare-const z String)

(assert (= (Concat a "hello") "testhello"))

(check-sat)
(get-model)