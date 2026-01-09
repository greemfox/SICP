#lang racket
;; 1.8
(define (cbrt x)
  (cbrt-iter 1.0 1.0 x))

(define (cbrt-iter guess delta-guess x)
  (if (good-enough? guess delta-guess)
      guess
      (let ([next-guess (improve guess x)])
        (cbrt-iter next-guess (abs (- guess next-guess)) x))))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))

(define (good-enough? guess delta-guess)
  (< (/ delta-guess guess) 0.001))
