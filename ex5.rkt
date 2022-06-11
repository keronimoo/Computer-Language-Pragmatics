#lang scheme

(define (squared x)
  (* x x))

(define (cubed x)
  (* x (* x x)))
  

(define (cube-list list term)   ; defining a list #higher order 
  (if (null? list)         ; if list is empty return empty list
      '()
      (cons (term(car list)) (cube-list (cdr list) term)))) ;


(define (square-list list term)   ; defining a list #higher order 
  (if (null? list)         ; if list is empty return empty list
      '()
      (cons (term(car list)) (square-list (cdr list) term)))) ; 



(display "Cubed List: ")  ;  detail

(cube-list '(2 5 7) cubed)  ; given list


(display "Squared List: ") ; detail

 (square-list '(2 5 7) squared)