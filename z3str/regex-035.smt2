(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (RegexIn (Concat x y) (RegexStar (Str2Reg "abc") ) ) )





(check-sat)
(get-model)

