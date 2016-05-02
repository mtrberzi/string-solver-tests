(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexConcat (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))

(assert (> (Length x) 0))
    
(check-sat)
(get-model)

