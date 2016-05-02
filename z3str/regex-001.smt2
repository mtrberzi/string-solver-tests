(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (= x ""))
(assert (RegexIn x (RegexStar (Str2Reg "ced") ) ) ) 

(check-sat)
(get-model)

