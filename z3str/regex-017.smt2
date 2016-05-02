(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexUnion (Str2Reg "AB") (RegexUnion (Str2Reg "abcd") (Str2Reg "123") ) ) ) ) )

(assert (= 5 (Length x)))


(check-sat)
(get-model)

