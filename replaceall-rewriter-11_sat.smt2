(set-info :status sat)

; we assume that replace-all has non-greedy semantics
(assert (= "yyyyy" (str.replace-all "aaaaa" (re.* (str.to.re "a")) "y")))
(check-sat)