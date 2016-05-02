(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)


(assert (= x "cdeabcdcde"))
(assert (RegexIn x (RegexStar (RegexUnion (Str2Reg "abcd") (Str2Reg "cde") ) ) ) )



(check-sat)
(get-model)

