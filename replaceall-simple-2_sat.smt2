(set-info :status sat)

(declare-const R String)
(declare-const Result String)

(assert (or (= R "b") (= R "c")))
(assert (= Result (str.replace-all "aaa" (str.to.re "a") R)))
(assert (or (= Result "bbb") (= Result "ccc")))

(check-sat)
(get-model)