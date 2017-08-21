#lang racket
#|(if <condition>
    <true>
    <false>)|#
;2100 predicate(function that returns true or false) logic


;cond statement, other way of performing conditions but its less lengthy way
#|
(cond 
 [(positive? -5) "yes, -5 is positive"];"Doesn't get here,statement skipped"
 [(> -5 232323) "yes, -5 is greater than 232323"];"Nor here,statement skipped"
 [else ":P"])
|#

#|
(define (foo x y)
  (cond
    [(= x y) "They are equal"]
    [(< x y) "x<y"]
    [else "y>x"]))
|#

; not and or  are the operators used with the same name, no special symbols
#|
(define (foo x y)
  (cond
    [(= x y) "They are equal"]
    [(< x y) (string-append (number->string x) " less than " (number->string y))]
    [else (string-append (number->string x) " greater than " (number->string y))]))
|#

(negate <)