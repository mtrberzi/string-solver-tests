(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (RegexIn x (RegexConcat (Str2Reg "a") (RegexStar (Str2Reg "b") ) ) ) )

; (assert (RegexIn x (RegexConcat (Str2Reg "c") (RegexStar (Str2Reg "c") ) ) ) )

(assert (RegexIn x (RegexConcat (Str2Reg "a") (RegexConcat (RegexStar (Str2Reg "b") ) (RegexStar (Str2Reg "c") ) ) ) ) )

(assert (= 3 (Length x) ) );


(check-sat)
(get-model)

