(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)


(assert (= (Length x) 8))
(assert (RegexIn x (RegexStar (Str2Reg "ced") ) ) ) 
(assert (RegexIn x (RegexStar (Str2Reg "abcd") ) ) ) 


(check-sat)
(get-model)

