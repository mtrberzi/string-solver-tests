(set-info :status sat)

(declare-const X String)

(assert (or (= X "") (= X "\0")))
(assert (= (str.len X) 1))

(check-sat)

