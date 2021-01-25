#lang scheme

;;;; Excersise 1-11

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))
              )
        )
  )


;;; flase remake!
(define (f_imp n)
  (f-iter 0 n)
  )

(define (f-iter counter n)
  (cond ((< n 3) n)
        (else (f-iter (+ counter 1) (- n 1))
              )
        )
  )
  