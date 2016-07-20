(set-logic QF_S)
(set-info :status sat)

(declare-const key String)
(declare-const val String)

(assert (RegexIn key (RegexStar (RegexCharRange "a" "b"))) )
(assert (<= 5 (Length key)))
(assert (>= 7 (Length key)))




(check-sat)
(get-model)
