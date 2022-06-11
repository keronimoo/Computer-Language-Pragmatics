#lang scheme
(define (cube-list list)   ; defining a list
  (if (null? list)         ; if list is empty return empty list
      '()
      (cons (* (car list)(* (car list) (car list))) (cube-list (cdr list))))) ;else construct a list with cubed elements of given list


(display "Cubed List: ")  ;detail

(cube-list '(2 5 7))  ; given list