#lang racket
; recursive
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

; iterative
(define (f-new n)
  (f-iter 2 1 0 n))

(define (f-iter a b c n)
  (cond ((< n 3) n)
        ((> n 3) (f-iter (+ a (* 2 b) (* 3 c)) a b (sub1 n)))
        (else (+ a (* 2 b) (* 3 c)))))
