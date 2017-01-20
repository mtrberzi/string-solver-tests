(set-info :status sat)

(declare-const X String)

(assert (or (= X "abc") (= X (Substring "abcdef" 8 3))))

(check-sat)
