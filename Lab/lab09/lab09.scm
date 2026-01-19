(define (over-or-under num1 num2)
  (cond ((> num1 num2) 1) 
        ((= num1 num2) 0)
        ((< num1 num2) -1)))


(define (make-adder num) 
  (let ()
      (lambda (x) (+ x num))))


(define (composed f g) 
  (let () 
      (lambda (x) (f (g x)))))


(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
  (cond ((zero? a) b)
        ((zero? b) a)
        ((> b a) (gcd b a))
        (else (gcd b (modulo a b)))))
