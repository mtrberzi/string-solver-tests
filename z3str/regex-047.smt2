(set-logic QF_S)
(set-info :status sat)

(declare-const key String)
(declare-const val String)

(define-fun QuoteRegex ((aRegex Regex)) Regex 
    (Regexstr.++ (Regexstr.++ (Str2Reg """") aRegex) (Str2Reg """")))

(assert (RegexIn key (QuoteRegex (RegexStar (Str2Reg "a")))))

(assert (= (str.len key) 2)) 


(check-sat)
(get-model)
