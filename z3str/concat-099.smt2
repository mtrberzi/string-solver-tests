(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const n String)

(assert (= (Concat "abc" n ) (Concat x y ) ) ) 
(assert (= (Length x) 5 ) )

(check-sat)
(get-model)