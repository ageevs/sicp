#lang sicp
;; The square of a number
(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))
;; The sum of squares of two numbers
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)
;; Further abstraction of sum-of-squares
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)