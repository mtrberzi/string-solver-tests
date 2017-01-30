(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexUnion (Str2Reg "abcd") (Str2Reg "123") ) ) ) )

(assert (= 11 (str.len x)))

(assert (not (= x "abcd123abcd")))

(assert (not (= x "abcdabcd123")))




(check-sat)
(get-model)

