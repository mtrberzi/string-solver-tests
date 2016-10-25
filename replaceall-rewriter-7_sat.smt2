(set-info :status sat)

(assert (= "aaa" (str.replace-all "aba" (RegexUnion (Str2Reg "b") (Str2Reg "c")) "a")))

(check-sat)
