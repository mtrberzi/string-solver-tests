(set-logic QF_S)
(set-info :status unknown)
(declare-const x1 String)
(declare-const y2 String)
(declare-const x2 String)


(assert (= (Concat x1 (Concat "ef" y2)) (Concat "abc" x2)) )
(assert (= (Length x1) 4) )

(check-sat)
(get-model)