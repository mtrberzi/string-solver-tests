(set-info :status sat)

; match [ab][cd]
(assert (= "yy yy aa" (str.replace-all "ac bd aa" (re.++ (re.union (str.to.re "a") (str.to.re "b") ) (re.union (str.to.re "c") (str.to.re "d")) ) "yy")))
(check-sat)