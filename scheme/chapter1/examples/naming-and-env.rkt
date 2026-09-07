#lang sicp
;; Defining and using a variable
(define size 2)
size
(* 5 size)
;; Computing the area and circumference of a circle
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius)) ; area (pi*r^2)
(define circumference (* 2 pi radius)) ; circumference (2*pi*r)
circumference