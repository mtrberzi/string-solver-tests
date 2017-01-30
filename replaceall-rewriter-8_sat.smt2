(set-info :status sat)

(assert (= "aaa" (str.replace-all "abc" (re.union (str.to.re "b") (str.to.re "c")) "a")))

(check-sat)
