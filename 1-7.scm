(define (sqrt x)
    (sqrt-iter 1.0 x)
)

(define (sqrt-iter guess x)
    ; (if (good-enough? guess x)
    ;     guess
    ;     (sqrt-iter (improve guess x) x)
    ; )
    (if (new-good-enough? guess (improve guess x))
        (improve guess x)
        (sqrt-iter (improve guess x) x)
    )
)

(define (good-enough? guess x)
    (< (abs (-(square guess) x)) 0.001)
)

(define (new-good-enough? old-guess new-guess)
   (< (/ (abs (- old-guess new-guess)) old-guess) 0.01)
)

(define (square x)
    (* x x)
)

(define (abs x) 
    (if (< x 0) -x x)
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y)
    (/ (+ x y) 2)
)
(display (sqrt 0.00009))
(newline)
(display (sqrt (+ 100 37)))
(newline)
(display (sqrt (+ (sqrt 2) (sqrt 3))))
(newline)
(display (square (sqrt 1000)))
(newline)

(display (sqrt 99999912345671123456789))
(newline)

(exit)