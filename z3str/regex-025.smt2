(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexConcat (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))

(assert (RegexIn y (RegexStar (RegexConcat (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))
      
(assert (= (Length x) (Length y)))

(assert (not (= x y)))

(assert (= (Length x) 7))






(check-sat)
(get-model)

