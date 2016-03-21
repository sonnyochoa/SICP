;;; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (three-sum-of-sq a b c)
        (+ (square a)
           (square b)
           (square c)))

