(set-info :status sat)

(declare-const X String)

(assert (= X "1"))
(assert (or (= X "\61") (= X "\62")))

(check-sat)

