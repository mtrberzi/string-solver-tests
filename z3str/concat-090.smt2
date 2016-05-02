(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)

(declare-const Y1 String)
(declare-const Y2 String)
(declare-const Y3 String)
(declare-const Y4 String)


(assert (= (Concat x Y1 ) (Concat Y2 y) ) )
(assert (= (Concat y Y3) (Concat Y4 x) ) )


(check-sat)
(get-model)