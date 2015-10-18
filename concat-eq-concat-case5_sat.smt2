(set-logic QF_S)
(set-info :status sat)

(declare-const X String)
(declare-const U String)

(assert (= (Concat X "cdef") (Concat U "def")))

(check-sat)
