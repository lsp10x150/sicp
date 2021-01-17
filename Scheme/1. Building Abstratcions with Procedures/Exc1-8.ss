#lang scheme
;;;;Excersise 1-8
;;;Cubic root evaluation

(define (cubrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (cubrt-iter (improve guess x)
                 guess
                 x)
      )
  )

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess)) 3)
  )

(define (good-enough? guess prev-guess)
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001)
  )

(define (cubrt x)
  (cubrt-iter 1.0 0.5 x)
  )