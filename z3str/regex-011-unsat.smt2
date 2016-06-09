(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "abcd") ) ) )
(assert (RegexIn y (RegexStar (Str2Reg "abcd") ) ) )

(assert (= (Length x)  6) )

(check-sat)
(get-model)

