(set-logic QF_S)
(set-info :status sat)

(declare-const X String)

(assert (= (Concat "abc" X) "abcdef")

(check-sat)