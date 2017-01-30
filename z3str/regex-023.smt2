(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Regexstr.++ (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))

(assert (> (str.len x) 0))
    
(check-sat)
(get-model)

