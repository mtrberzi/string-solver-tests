(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn y (RegexStar (RegexStar (Str2Reg "abcd") ) ) ) )

(assert (= (str.len y)  8) )

(check-sat)
(get-model)

