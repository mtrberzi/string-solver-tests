(set-logic QF_S)
(set-info :status sat)

(assert (= (Concat "abc" "xyz") "abcxyz"))

(check-sat)
