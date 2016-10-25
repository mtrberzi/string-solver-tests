(set-info :status sat)

(assert (= "aba" (str.replace-all "ababa" (Str2Reg "aba") "a")))

(check-sat)
