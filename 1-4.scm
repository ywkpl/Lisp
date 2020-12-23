(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b)
)

(display (a-plus-abs-b 13 5))
(newline)

(display (a-plus-abs-b 23 -5))
(newline)

(display (a-plus-abs-b -3 -5))
(newline)
(exit)