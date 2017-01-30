(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "ab") ) ) )
(assert (RegexIn x (RegexStar (Str2Reg "abab") ) ) )
(assert (RegexIn x (RegexStar (Str2Reg "ababac") ) ) )

(assert (> (str.len x)  1) )

(check-sat)
(get-model)

