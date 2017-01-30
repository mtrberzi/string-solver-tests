(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (RegexIn x (Regexstr.++ (Str2Reg "a") (RegexStar (Str2Reg "b") ) ) ) )

; (assert (RegexIn x (Regexstr.++ (Str2Reg "c") (RegexStar (Str2Reg "c") ) ) ) )

(assert (RegexIn x (Regexstr.++ (Str2Reg "a") (Regexstr.++ (RegexStar (Str2Reg "b") ) (RegexStar (Str2Reg "c") ) ) ) ) )

(assert (= 3 (str.len x) ) );


(check-sat)
(get-model)

