(set-logic QF_S)
(set-info :status unknown)
(declare-const a String)
(declare-const b String)
(declare-const z String)

(assert (= (Concat (Concat "test" a) "num") "testhellonum"))

(check-sat)
(get-model)