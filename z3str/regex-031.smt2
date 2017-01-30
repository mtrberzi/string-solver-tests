(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)

(assert (= (str.++ x y) (str.++ m n) ) )

(assert (RegexIn n (RegexStar (Str2Reg "abc") ) ) )

(assert (> (str.len x) (str.len m) ) )

;(assert (RegexIn x (RegexStar (Regexstr.++ (RegexStar (Str2Reg "a") ) (Str2Reg "b") ))))



(check-sat)
(get-model)

