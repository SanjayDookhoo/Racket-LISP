#lang racket

#|can store different data types in same var|#
;map in racket
;lists
;<something>s is commonly used to refer to a lists, eg xs,ls,ys
;after predicate name is placed a question mark is placed after to signify it returns true or false

(define scores (list 100 99 0 12 13 46 89))
;another way of defining  (define scores '( 93.7 5 7.6 100.0))
;head is first element, tail is everything after

;adding to lists using cons operator

;ugly version
;(cons 56.7 scores)

(define (student-pass score)
  (> score 60))

(define (pass xs)
  (if(empty? xs)
     '()
     (let* ((h (first xs));destructures the list
               (tl (rest xs)))
       (cons (student-pass h) (pass tl)))))
#|

;definition of map
(define (map F xs )
  (if (empty? xs)
      '()
      (let* ((h (first xs))
             (tl (rest xs)))
        (cons (F h) (map F tl)))))

(define (get-good-scores xs)
  (if (empty? xs)
      '()
      (if (> (first xs) 80)
          (cons (first xs) (get-good-scores (rest xs)))
          (get-good-scores (rest xs)))))

(define (filter pred? xs);pred shoirt for predicate
  (if (empty? xs)
      '()
      (if (pred? (first xs))
          (cons (first xs)
                (filter pred? (rest xs)))
          (filter pred? (rest xs)))))

(filter (lambda (x) (> x 80))
        scores)|#