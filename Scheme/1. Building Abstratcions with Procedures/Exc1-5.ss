#lang scheme
;;;;Excersise 1-5

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y)
  )