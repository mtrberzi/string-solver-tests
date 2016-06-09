(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexUnion (Str2Reg "abcd") (Str2Reg "123") ) ) ) )

(assert (= 5 (Length x)))


(check-sat)
(get-model)

