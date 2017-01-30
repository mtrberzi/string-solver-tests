(set-info :status sat)

(assert (= "def def" (str.replace-all "abc abc" (str.to.re "abc") "def") ))
(check-sat)
