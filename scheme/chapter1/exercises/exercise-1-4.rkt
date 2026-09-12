#lang sicp
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 5) ; is equivalent to (+ 2 5), since b > 0
(a-plus-abs-b 2 -5) ; is equivalent to (- 2 -5) or (+ 2 5), since b < 0