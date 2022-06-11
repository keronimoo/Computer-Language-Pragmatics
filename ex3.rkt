#lang scheme
(define (square-list list)  ;defining a list
  (if (null? list)    ;if list is empty return empty list
      '()
      (cons (* (car list) (car list)) (square-list (cdr list)))))   ;else construct a list with squared elements of given list


(display "Squared List: ")  ; detail

(square-list '(2 5 7))  ; given list