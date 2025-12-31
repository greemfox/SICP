#lang racket
(define (sum-squares-of-larger-two a b c)
  (cond ((smallest? a b c) (sum-squares b c))
        ((smallest? b a c) (sum-squares a c))
        (else (sum-squares a b))))
(define (sum-squares a b)
  (+ (* a a) (* b b)))
(define (smallest? a b c)
  (and (< a b) (< a c)))
