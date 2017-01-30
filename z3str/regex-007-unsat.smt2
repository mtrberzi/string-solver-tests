(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)


(assert (= (str.len x) 8))
(assert (RegexIn x (RegexStar (Str2Reg "ced") ) ) ) 
(assert (RegexIn x (RegexStar (Str2Reg "abcd") ) ) ) 


(check-sat)
(get-model)

