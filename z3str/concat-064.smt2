(set-logic QF_S)
(set-info :status sat)
(declare-const X String)
(declare-const Y String)
(declare-const I String)
(declare-const J String)

(assert (= (Concat X (Concat Y "b") ) (Concat I (Concat "c" J) ) ) )

(check-sat)
(get-model)