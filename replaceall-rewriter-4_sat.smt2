(set-info :status sat)

(assert (= "aba" (str.replace-all "a" (str.to.re "a") "aba")))

(check-sat)
