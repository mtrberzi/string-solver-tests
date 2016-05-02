(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (not (RegexIn x (RegexStar (Str2Reg "abc") ) ) ) )
(assert (= x "abc") )


(check-sat)
(get-model)

