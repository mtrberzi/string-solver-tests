(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "ab") ) ) )
(assert (RegexIn x (RegexStar (Str2Reg "abab") ) ) )
(assert (RegexIn x (RegexStar (Str2Reg "ababac") ) ) )


(check-sat)
(get-model)

