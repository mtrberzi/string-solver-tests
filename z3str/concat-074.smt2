(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const m String)
(declare-const k String)
(declare-const n1 String)
(declare-const n2 String)

(assert (= z (Concat x "gkhi" ) ) )
(assert (= z (Concat y "hi"   ) ) )
(assert (= z (Concat "abcd" m ) ) )
(assert (= z (Concat "ab" k ) ) )
(assert (= z (Concat n1 n2 ) ) )

(check-sat)
(get-model)