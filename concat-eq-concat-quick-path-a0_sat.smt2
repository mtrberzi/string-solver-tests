(set-logic QF_S)
(set-info :status sat)

(declare-const X String)
(declare-const Y String)
(declare-const U String)
(declare-const V String)

(assert (= (Concat X Y) (Concat U V)))

(assert (or (= X "abc") (= X "def")))
(assert (or (= U "xyz") (= U ("abc"))))

(check-sat)