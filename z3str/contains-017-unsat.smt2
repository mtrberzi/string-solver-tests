(set-logic QF_S)
(set-info :status unsat)
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

(assert (= x1 "123bbaacc123") )

(assert (= y1 "abc") )

(assert b1)

(check-sat)
(get-model)
