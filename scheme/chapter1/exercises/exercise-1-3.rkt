#lang sicp
(define (sum-of-squares-max x y z)
  (cond ((and (> x y) (> x z)) (+ (square x) (square (if (> y z) y z))))
        ((and (> y x) (> y z)) (+ (square y) (square (if (> x z) x z))))
        ((and (> z x) (> z y)) (+ (square z) (square (if (> x y) x y))))))

(define (sum-of-squares-max2 x y z)
  (+ (square (max (min x y) z))
     (square (max x y))))

(define (min x y)
  (if (< x y) x y))

(define (max x y)
  (if (> x y) x y))

(define (square x)
  (* x x))

(sum-of-squares-max 8 3 6)
(sum-of-squares-max2 8 3 6)