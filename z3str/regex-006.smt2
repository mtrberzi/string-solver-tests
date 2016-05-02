(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (= x "abcabc"))
(assert (RegexIn x (RegexStar (RegexStar (Str2Reg "abc") ) ) ) ) 



(check-sat)
(get-model)

