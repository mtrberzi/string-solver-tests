(set-logic QF_S)
(set-info :status sat)

(declare-const X String)
(declare-const Y String)
(declare-const U String)
(declare-const V String)

(assert (= (Concat X Y) (Concat U V)))

(assert (or (= Y "abc") (= Y "def")))
(assert (or (= V "xyz") (= V "abc")))

(check-sat)