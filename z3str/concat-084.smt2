(set-logic QF_S)
(set-info :status sat)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y1 String)
(declare-const y2 String)
(declare-const z String)
(declare-const m1 String)
(declare-const m2 String)
(declare-const n1 String)
(declare-const n2 String)
(declare-const x2Len Int)


(assert (= z (Concat x1 (Concat "abc" x2) ) ) )
(assert (= z (Concat y1 (Concat "ef" y2) ) ) )
(assert (= z (Concat m1 (Concat "ce" m2) ) ) )
(assert (> (Length z) 7) )


(check-sat)
(get-model)