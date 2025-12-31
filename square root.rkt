#lang racket
(define (sqrt x)
  (sqrt-iter 1.0 1.0 x))

(define (sqrt-iter guess delta-guess x)
  (if (good-enough? guess delta-guess)
      guess
      (let ((next-guess (improve guess x)))
        (sqrt-iter next-guess (abs (- guess next-guess)) x))))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess delta-guess)
  (< (/ delta-guess guess) 0.001))
