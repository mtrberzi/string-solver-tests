(set-logic QF_S)
(set-info :status unknown)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y1 String)
(declare-const y2 String)

(assert (= (Concat x1 (Concat "abc" x2 ) ) (Concat y1 (Concat "ef" y2) ) ) )
;(assert (= (Length X) 0 ) )

(check-sat)
(get-model)