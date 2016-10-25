(set-info :status sat)

(assert (= "" (str.replace-all "" (Str2Reg "a") "b")))

(check-sat)