(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (=  "testnumnum" (Concat y (Concat "num" x) ) ) )

(check-sat)
(get-model)