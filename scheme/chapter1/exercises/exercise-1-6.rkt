#lang sicp
;; The part from the 'square-root-iter' example
#|
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve-guess guess x) x)))
|#

(define (improve-guess guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs(- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; New part from the exercise

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; (new-if (= 2 3) 0 5)
; (new-if (= 1 1) 0 5)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve-guess guess x) x)))

(sqrt 9)
; (sqrt (+ (sqrt 2) (sqrt 3)))
; (square (sqrt 1000))

;; Here's the error message we get: "Interactions disabled; out of memory".
;; Since 'new-if' is an ordinary function, the operands must be evaluated before its body can be executed.
;; The first operand, a call to the 'good-enough' procedure
;; is executed first, then the 'guess' parameter is evaluated, and finally, the interpreter
;; evaluated a call to the 'sqrt-iter' function. The last two operands are evaluated regardless
;; of whether or not the 'good-enough' call returned a '#t' value. This means that even if the function
;; worked properly and we were really getting closer and closer to the answer with each iteration,
;; we would still keep executing 'sqrt-iter' procedure, regardless how close or guess already was.