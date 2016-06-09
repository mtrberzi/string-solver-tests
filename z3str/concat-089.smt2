(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const Y3 String)
(declare-const Y4 String)


(assert (= (Concat x "abc") (Concat "ef" y) ) )
(assert (= (Concat y Y3) (Concat Y4 x) ) )


(check-sat)
(get-model)