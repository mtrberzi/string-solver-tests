(set-info :status sat)

(assert (= "abc" (str.replace-all "abc" (Str2Reg "x") "z"))
(check-sat)
