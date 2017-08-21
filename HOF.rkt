#lang racket
#|(define incr(curry + 5)) ;curry is a reserved word placeholder that accepts a value to then increment, it cannot be replaced with another word|#
#|
(define (add x y)
  (+ x y))
(define c-add (curry add 1))|#
(define test a (+ a 5))