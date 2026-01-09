#lang racket
;; 1.16
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (sub1 n)))))

(define (expt-new b n)
  (expt-iter b n 1))
(define (expt-iter b counter prod)
  (if (= counter 0)
      prod
      (expt-iter b
                 (sub1 counter)
                 (* b prod))))

(define (expt-fast b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expt-fast b (/ n 2))))
        (else (* b (expt-fast b (sub1 n))))))

(define (expt-fast-new b n)
  (expt-fast-new-iter 1 b n))
(define (expt-fast-new-iter a b n)
  ;; use successive squaring
  ;; keep ab^2 invariant
  ;; find answer in a
  (a))

;; 1.17
(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (sub1 b)))))

(define (square n)
  (* n n))
