(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg "ab") ) ) )
(assert (RegexIn y (RegexStar (Str2Reg "ab") ) ) )

(assert (= (str.len x)  2) )
(assert (= (str.len y)  4) )

(check-sat)
(get-model)

