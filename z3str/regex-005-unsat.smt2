(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (= x "aaaaaaaaa"))
(assert (RegexIn x (RegexStar (RegexStar (Str2Reg "ced") ) ) ) ) 



(check-sat)
(get-model)

