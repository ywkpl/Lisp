(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)
    )
)
(display (new-if (= 2 3) 0 5))
(newline)
(display (new-if (= 1 1) 0 5))
(newline)

(if #t (display "good") (display "bad"))
(newline)

(new-if #t (display "good") (display "bad"))
(newline)

;结果是死循环递归调用，原因在于：
;if是特殊表达式，条件为真是执行then表达式，否则执行else表达式
;new-if是常规函数，两段都会进行执行，造成sqrt-iter递归调用

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)
    )
)

(define (sqrt x)
    (sqrt-iter 1.0 x)
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001)
)

(define (abs x)
    (if (< x 0)
        (-x)
        x
    )
)

(define (square x)
    (* x x)
)

(display (sqrt 9))
(newline)

(display (sqrt (+ 100 37)))
(newline)

(display (sqrt (+ (sqrt 2) (sqrt 3))))
(newline)

(display (square (sqrt 1000)))
(newline)
(exit)