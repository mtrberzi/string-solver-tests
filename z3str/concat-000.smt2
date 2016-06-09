(set-logic QF_S)
(set-info :status sat)
(declare-const a String)
(declare-const b String)
(declare-const c1 String)
(declare-const c2 String)
(declare-const x String)


(assert (= a ( Concat ( Concat "te" c1 ) ( Concat "t" c2 ) ) ) )
(assert (= a b) )
(assert (= x "str  ") )

(check-sat)
(get-model)
