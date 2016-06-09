(set-logic QF_S)
(set-info :status sat)
(declare-const a String)
(declare-const b String)

(assert (or (= (Concat a b) "te" )  (= (Concat b a) "te" ) ) )
(assert (= b "t" ) )

(check-sat)
(get-model)