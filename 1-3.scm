(define (fun a b c)
    (cond 
        ((and (<= a b) (<= a c)) (+ b c))
        ((and (<= b a) (<= b c)) (+ a c))
        (else (+ a b))
    ))

(display (fun 3 4 5))
(newline)
(display (fun 3 5 4))
(newline)
(display (fun 4 3 5))
(newline)
(display (fun 4 5 3))
(newline)
(display (fun 5 3 4))
(newline)
(display (fun 5 4 3))
(newline)
(display (fun 7 4 5))
(newline)
(display (fun 7 6 5))
(newline)
(display (fun 3 3 5))
(newline)
(display (fun 5 3 3))
(newline)
(display (fun 3 5 3))
(newline)
(display (fun 3 3 3))
(exit)