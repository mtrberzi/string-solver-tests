(set-logic QF_S)
(set-info :status sat)

(declare-const X String)
(declare-const Y String)
(declare-const U String)

(assert (= (Concat X Y) (Concat U "def")))

(check-sat)
