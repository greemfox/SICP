#lang racket
; nth row, kth place
(define (pascal n k)
  (cond ((and (= n 1) (= k 1)) 1)
        ((or (< k 1) (> k n)) 0)
        (else (+ (pascal (sub1 n) (sub1 k)) (pascal (sub1 n) k)))))
