(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (RegexIn x (Str2Reg "abc") ) )



(check-sat)
(get-model)

