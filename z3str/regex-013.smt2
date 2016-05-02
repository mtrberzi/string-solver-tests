(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (RegexIn y (RegexStar (RegexStar (Str2Reg "abcd") ) ) ) )

(assert (= (Length y)  8) )

(check-sat)
(get-model)

