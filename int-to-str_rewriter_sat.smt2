(set-info :status sat)

(assert (= "42" (int.to.str 42)))
(check-sat)

