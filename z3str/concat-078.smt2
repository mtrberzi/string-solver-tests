(set-logic QF_S)
(set-info :status unknown)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y1 String)
(declare-const y2 String)
(declare-const z String)
(declare-const m1 String)
(declare-const m2 String)

(assert (= z (Concat x1 (Concat "abc" x2) ) ) )
(assert (= z (Concat y1 (Concat "ef" y2) ) ) )
(assert (= z (Concat m1 (Concat "ce" m2) ) ) )
(assert (= (Length z) 6) )


(check-sat)
(get-model)

