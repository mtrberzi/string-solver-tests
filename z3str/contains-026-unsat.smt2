(set-logic QF_S)
(set-info :status unsat)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y1 String)
(declare-const y2 String)
(declare-const z1 String)
(declare-const z2 String)

(declare-const b1 Bool)
(declare-const b2 Bool)
(declare-const b3 Bool)


(assert (= b1 (Contains x1 y1 ) ) )

(assert (= b2 (Contains x2 y1 ) ) )

(assert (= x1 x2) )

(assert b2)

(assert (not b1) )

(check-sat)
(get-model)
