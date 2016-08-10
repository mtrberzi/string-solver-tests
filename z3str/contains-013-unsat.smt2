(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const b1 Bool)
(declare-const b2 Bool)
(declare-const b3 Bool)


(assert (= b1 (Contains x y ) ) )

(assert (= b2 (Contains x z ) ) )

(assert (= b3 (Contains y z ) ) )

(assert b1)

(assert (not b2))

(assert b3)

(check-sat)
(get-model)
