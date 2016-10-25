(set-info :status sat)

(assert (= "def def" (str.replace-all "abc abc" (Str2Reg "abc") "def") ))
(check-sat)
