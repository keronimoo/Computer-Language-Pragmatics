#lang scheme
(define (sum-evens n) ; defining a function
  (if (>= n 1) ; if n greater or equals to 1 (inclusive 1 to n)
      (if (zero? (modulo n 2)) ; if remainder is 0 then : (if n is even)
      (+  n (sum-evens (- n 2))) 
      (+ (- n 1) (sum-evens (- n 3)))) ; else  (if n is odd) if n is 21 substract n from it and sum 21-1 with 21-3 .....
      0))


(display "Sum of Evens  :  ")
(sum-evens 20)      
         
      

      