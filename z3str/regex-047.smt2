(set-logic QF_S)
(set-info :status sat)

(declare-const key String)
(declare-const val String)

(define-fun QuoteRegex ((aRegex Regex)) Regex 
    (RegexConcat (RegexConcat (Str2Reg "\"") aRegex) (Str2Reg "\"")))

(assert (RegexIn key (QuoteRegex (RegexStar (Str2Reg "a")))))

(assert (= (Length key) 2)) 


(check-sat)
(get-model)
