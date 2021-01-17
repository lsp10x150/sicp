#lang scheme
;;;;Excersise 1-4
(define (a-plus-abs-b a b)
  ((if (> b a) + -) a b))