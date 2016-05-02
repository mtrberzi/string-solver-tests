(set-logic QF_S)
(set-info :status unknown)
(declare-const x1 String)
(declare-const x2 String)
(declare-const y1 String)
(declare-const y2 String)
(declare-const z1 String)
(declare-const z2 String)

(declare-const b1 bool)
(declare-const b2 bool)
(declare-const b3 bool)


(assert (= b1 (Contains x1 y1 ) ) )

(assert (= b2 (Contains x2 y2 ) ) )

(assert (= x1 x2) )

(assert (= y1 "bc") )

(assert (= y2 "abcd") )

(assert b1)

(assert (not b2) )

(check-sat)
(get-model)
