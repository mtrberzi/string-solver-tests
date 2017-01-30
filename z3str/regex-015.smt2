(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "ab12") ) ) )
(assert (RegexIn y (RegexStar (RegexStar (Str2Reg "ab12") ) ) ) )

(assert (= (str.len x)  4) )
(assert (= (str.len y)  8) )

(check-sat)
(get-model)

