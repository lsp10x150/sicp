#lang scheme
;;;;Example of factorial evaluation using recursion

(define (factorial_1 n)
  (if (= n 1)
      1
      (* n (factorial_1 (- n 1)))
      )
  )

(define (factorial_2  n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))
