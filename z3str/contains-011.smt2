(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const b1 bool)

(assert (= b1 (Contains "abcd_efgadc" "efg" ) ) )

(check-sat)
(get-model)
