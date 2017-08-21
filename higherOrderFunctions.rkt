#lang racket

(define (fun-apply-twice f x)
  (f(f x)))                                             #|(fun-apply-twice sqr 5 ) ; where sqr is a function predefined by racket|#

(define (definedSquare a) 
  (* a a))                                              #|(fun-apply-twice definedSquare 5 ) ;note it was not placed in parenthesis|#

(define (test) 
  (+ 5 2))                                              #|(fun-apply-twice sqr (test)) ;note test was placed in parenthesis because it returns a value|#