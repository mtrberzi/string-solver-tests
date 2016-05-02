(set-logic QF_S)
(set-info :status unknown)
(declare-const X String)
(declare-const Y1 String)
(declare-const Y2 String)
(declare-const Z String)
(declare-const M String)


(assert (= Z (Concat X "gkhi" ) ) )
(assert (= Z (Concat Y1 Y2   ) ) )
(assert (= Z (Concat "abcd" M ) ) )


(check-sat)
(get-model)