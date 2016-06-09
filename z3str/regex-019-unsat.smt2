(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (Str2Reg ".") ) ) ) 

(assert (= 5 (Length x)))

(assert (not (= x ".....")))




(check-sat)
(get-model)

