(define (square n) (* n n))

(define (pow base exp) 
  (if (= exp 1)
    base
    (if (even? exp)
      (pow (square base) (/ exp 2))
      (* (pow (square base) (/ (- exp 1) 2)) base)
    )))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ()
        (define (cube y) (* y y y))
        (repeatedly-cube (- n 1) (cube x))
        )))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))
