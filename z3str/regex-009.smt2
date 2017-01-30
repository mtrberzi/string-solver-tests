(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "abcd") ) ) )
(assert (RegexIn x (RegexStar (Str2Reg "abcdabcd") ) ) )

(assert (> (str.len x) 20) )

(assert (< (str.len x) 25) )

(check-sat)
(get-model)

