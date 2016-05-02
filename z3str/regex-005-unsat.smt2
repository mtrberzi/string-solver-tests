(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (= x "aaaaaaaaa"))
(assert (RegexIn x (RegexStar (RegexStar (Str2Reg "ced") ) ) ) ) 



(check-sat)
(get-model)

