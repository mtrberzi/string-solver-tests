(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)


;(assert (= x "abcdabcdabcdabcd"))
(assert (= x "abcdcde"))
(assert (RegexIn x (RegexUnion (RegexStar (Str2Reg "abcd") ) (RegexStar (Str2Reg "cde") ) ) ) )



(check-sat)
(get-model)

