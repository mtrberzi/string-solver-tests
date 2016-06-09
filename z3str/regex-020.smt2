(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexConcat (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))

(assert (= (Length x) 3))

(assert (not (= x "abb") ) )
(assert (not (= x "bab") ) )
(assert (not (= x "aab") ) )



(check-sat)
(get-model)

