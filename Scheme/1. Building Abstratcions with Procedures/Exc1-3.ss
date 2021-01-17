#lang scheme
;;;;Excersise 1-3
;;;Define a procedure taking three arguments and returning sum of squares of two largest of these arguments

(define (smallest-of-three x y z)
  (cond ((and (< x y) (< x z)) x)
        ((and (< y x) (< y z)) y)
        ((and (< z x) (< z y)) z)
        )
  )

(define (sum-squares-of-two-min-of-three x y z)
  (cond ((= (smallest-of-three x y z) x) (+ (* y y) (* z z)))
        ((= (smallest-of-three x y z) y) (+ (* x x) (* z z)))
        ((= (smallest-of-three x y z) z) (+ (* x x) (* y y)))
        )
  )

	
