(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexUnion (Str2Reg "abcd") (Str2Reg "123") ) ) ) )

(assert (= 11 (Length x)))

(assert (not (= x "abcd123abcd")))

(assert (not (= x "abcdabcd123")))




(check-sat)
(get-model)

