(set-logic QF_S)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (RegexStar (RegexConcat (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))

(assert (= (Length x) 2))

(assert (not (= x "bb")))
(assert (not (= x "ab")))


(check-sat)
(get-model)

