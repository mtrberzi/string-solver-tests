(set-info :status sat)

(assert (= "aba" (str.replace-all "a" (Str2Reg "a") "aba")))

(check-sat)
