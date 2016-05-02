(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "abcd") ) ) )
(assert (RegexIn x (RegexStar (Str2Reg "abcdabcd") ) ) )

(assert (> (Length x) 20) )

(assert (< (Length x) 25) )

(check-sat)
(get-model)

