(set-info :status sat)

(assert (= "aba" (str.replace-all "ababa" (str.to.re "aba") "a")))

(check-sat)
