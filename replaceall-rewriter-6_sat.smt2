(set-info :status sat)

(assert (= "ac" (str.replace-all "abc" (str.to.re "b") "")))

(check-sat)
