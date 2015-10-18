(set-logic QF_S)
(set-info :status sat)

(declare-const Y String)
(declare-const U String)

(assert (= (Concat "abc" Y) (Concat U "bcd")))

(check-sat)
