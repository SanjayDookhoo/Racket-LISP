#lang racket


;(define (some-quadratic x) 
  ;(+ (sqr x)(* 3 x)4))

;(define some-quadratic (lambda (x)(+ (sqr x)(* 3 x) 4)))

#|(define (add x y)
(+ x y ))|#



(define (swap f)(lambda (x y)(f y x)))
(define (sub x y)
  (- x y))
(define swapped-sub 
  (swap sub))
;(sub 2 3) => -1
(swapped-sub 2 3)
;

