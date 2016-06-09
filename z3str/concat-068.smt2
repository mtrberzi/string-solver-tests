(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (= z (Concat "a" x ) ) ) 
(assert (= z (Concat y "c" ) ) )
(assert (= (Length x) 1 ) )

(check-sat)
(get-model)