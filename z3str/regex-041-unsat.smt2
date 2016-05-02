(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (RegexIn x (RegexConcat (Str2Reg "a") (RegexStar (Str2Reg "b") ) ) ) )

(assert (RegexIn x (RegexConcat (Str2Reg "c") (RegexStar (Str2Reg "c") ) ) ) )

(assert (RegexIn x (RegexConcat (Str2Reg "a") (RegexConcat (RegexStar (Str2Reg "b") ) (RegexStar (Str2Reg "c") ) ) ) ) )

;(assert (str.in.re s (re.inter
;  (re.++ (str.to.re "a") (re.* (str.to.re "b")) 
;    (re.inter (str.to.re "c") (re.* (str.to.re "c"))))
;  (re.++ (str.to.re "a") (re.* (str.to.re "b")) (re.* (str.to.re "c")))
;  )))




(check-sat)
(get-model)

