(set-logic QF_S)
(set-info :status unsat)

(assert (= (Concat "abc" "xyz") "abcfoo"))

(check-sat)
