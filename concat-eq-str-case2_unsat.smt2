(set-logic QF_S)
(set-info :status unsat)

(declare-const X String)

(assert (= (Concat X "def") "abcdeffoo"))

(check-sat)
