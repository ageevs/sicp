#lang sicp
;; Three ways to write an absolute value function.
;; 1. Absolute-value function
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
;; 2. Absolute-value function
(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))
;; 3. Absolute-value function
(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

(abs -1)
(abs 2)

(abs2 -3)
(abs2 11)

(abs3 -15)
(abs3 23)

;; 4. Logical operators
(define x 6.8)
(and (> x 5) (< x 10))

;; 5. Defining our own predicate
(define (>= x y) (or (> x y) (= x y)))
; (define (>= x y) (not (< x y)))

(define y 6.81)
(>= x y)