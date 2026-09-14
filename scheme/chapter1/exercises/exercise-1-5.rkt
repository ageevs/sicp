#lang sicp
(define (p) (p))
(define (test x y)
	(if (= x 0) 0 y))
; (test 0 (p))
; Executing this line will produce an infinite recursion condition.
; Here's a short explanation of why that is the case:
; If the interpreter uses the applicative-order evaluation of expressions (which it does)
; then the arguments (or operands) are evaluated first, before the function (or the operator)
; is expanded and applied to them. This means that '(p)', which is the second operand in the expression,
; will be attempted to be executed before the function 'test' can be expanded.
; To evaluate '(p)', we must evaluate the body of the function, which, as you can see, calls itself.
; This is an example of an infinite recursion condition. As a side note, what's interesting here is that
; DrRacket will not crash, nor will there be a stack overflow error because of that. This is because
; the function 'p' is tail recursive, which basically means that the stack frame of the function
; is reused every time it is called. As a result, the stack doesn't grow with each recursive call, thus
; a stack overflow is avoided.
;
; If, however, the interpreter used the normal-order evaluation, the line would execute normally and the result would be 0.
; This is because in the normal-order evaluation, the arguments (or the operands) are only evaluated when needed.
; The interpreter would expand the call to '(if (= 0 0) 0 (p))', where, as you can see, the predicate is always 'true'.
; This means that there's no need to evaluate the alternative expression, so only the consequent one is executed
; and its value is returned as the output of the call to the function 'test'.