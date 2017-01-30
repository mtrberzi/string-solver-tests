(set-info :status sat)

(assert (= "" (str.replace-all "" (str.to.re "a") "b")))

(check-sat)