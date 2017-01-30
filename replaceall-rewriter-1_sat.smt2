(set-info :status sat)

(assert (= "abc" (str.replace-all "abc" (str.to.re "x") "z"))
(check-sat)
