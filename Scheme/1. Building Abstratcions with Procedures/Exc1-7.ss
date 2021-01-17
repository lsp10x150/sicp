#lang scheme
;;;;Improvement of example of sqrt evaluation via Newton's algorithm

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)
      )
  )

(define (improve guess x)
  (average guess (/ x guess)
           )
  )

(define (average x y)
  (/ (+ x y) 2 )
  )

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001)
  )

(define (sqrt x)
  (sqrt-iter 1.0 0.5 x)
  )