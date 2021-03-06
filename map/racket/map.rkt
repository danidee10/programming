#lang racket

;; (X -> Y) (listof X) -> (listof Y)
(define (list-map f lox)
  (cond [(empty? lox) empty]
        [else
         (cons (f (first lox)) (list-map f (rest lox)))]))
