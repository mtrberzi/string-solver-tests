(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Regexstr.++ (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))

(assert (RegexIn y (RegexStar (Regexstr.++ (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))
      
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))


(check-sat)
(get-model)

