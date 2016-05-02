(set-logic QF_S)
(set-info :status unknown)
(declare-const x1 String)
(declare-const x2 String)
(declare-const x3 String)
(declare-const y2 String)
(declare-const m2 String)

(assert (= (Concat "ef" y2) (Concat x1 x2)) )
(assert(= (Concat x3 (Concat "ce" m2)) (Concat "ef" y2)) )


(check-sat)
(get-model)