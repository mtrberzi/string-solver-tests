(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)

(assert (= (Concat x y) (Concat m n) ) )

(assert (RegexIn n (RegexStar (Str2Reg "abc") ) ) )

(assert (> (Length x) (Length m) ) )

;(assert (RegexIn x (RegexStar (RegexConcat (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))



(check-sat)
(get-model)

