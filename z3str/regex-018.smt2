(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexUnion (Str2Reg "AB") (Str2Reg "123") ) ) ) )

(assert (= 5 (str.len x)))

(assert (not (= x "123AB")))






(check-sat)
(get-model)

