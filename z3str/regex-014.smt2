(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "ab") ) ) )
(assert (RegexIn y (RegexStar (Str2Reg "ab") ) ) )

(assert (= (Length x)  2) )
(assert (= (Length y)  4) )

(check-sat)
(get-model)

