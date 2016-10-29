(set-info :status sat)

; we assume that replace-all has non-greedy semantics
(assert (= "yyyyy" (str.replace-all "aaaaa" (RegexStar (Str2Reg "a")) "y")))
(check-sat)