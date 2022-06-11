#lang scheme
(define (sum-list list)   ; defining a function
  (if                    ;if list is empty return 0
   (null? list)
   0
   (+ (car list)(sum-list(cdr list)))  ; sum given list : 1 <---> 2 3 4 5 6
   ))                                  ;                  1 + 2 <---> 3 4 5 6
                                       ;                  1 + 2 + 3 <---> 4 5 6
                                       ;                  1 + 2 + 3 + 4 <---> 5 6
                                       ;                  1 + 2 + 3 + 4 + 5 <---> 6
                                       ;                  1 + 2 + 3 + 4 + 5 + 6 <---> ()

(display "sums all the elements in a given list of numbers : (1 2 3 4 5 6) = ")
(sum-list'(1 2 3 4 5 6))