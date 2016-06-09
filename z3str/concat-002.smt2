(set-logic QF_S)
(set-info :status sat)
(set-option :auto-config true)
(set-option :produce-models true)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const i Int)

(assert (= (Concat (Concat x y) z) "teest"))
(assert (= y "es"))
(assert (= i 15))

(check-sat)
(get-model)