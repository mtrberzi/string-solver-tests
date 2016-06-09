(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "ab12") ) ) )
(assert (RegexIn y (RegexStar (RegexStar (Str2Reg "ab12") ) ) ) )

(assert (= (Length x)  4) )
(assert (= (Length y)  8) )

(check-sat)
(get-model)

