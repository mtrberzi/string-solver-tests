(set-logic QF_S)
(set-info :status unknown)
(declare-const str String)
(declare-const x String)
(declare-const var2 Int)
(declare-const var3 Int)

(assert (= x (CharAt str var2) ) )
(assert (< var2 0))


(check-sat)
(get-model)