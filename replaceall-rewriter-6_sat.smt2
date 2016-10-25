(set-info :status sat)

(assert (= "ac" (str.replace-all "abc" (Str2Reg "b") "")))

(check-sat)
