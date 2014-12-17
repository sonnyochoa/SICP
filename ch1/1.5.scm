;;; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;;; Then he evaluates the expression

(test 0 (p))

;; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer.

;; APPLICATIVE-ORDER EVALUATION
;; (test 0 (p))
;; (test 0 p) --> (test 0 p) --> indefinitely

;; NORMAL-ORDER EVALUATION
;; (test 0 (p)) -- it will evaluate the operand then reduce if needed
;; (0) -- it evaluated the first operand, 0, and it returned that as the answer
;; 0
