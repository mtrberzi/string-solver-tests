(set-logic QF_S)
(set-info :status sat)

(declare-const Y String)
(declare-const V String)

(assert (= (Concat "abc" Y) (Concat "abcd" V)))

(check-sat)
