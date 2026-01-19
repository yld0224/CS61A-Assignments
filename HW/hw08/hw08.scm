(define (ascending? s) 
    (if (null? s) #t 
        (let ((x (car s)))
            (cond ((null? (cdr s)) #t)
                ((>= (car (cdr s)) x) (ascending? (cdr s)))
                (else #f)))))

(define (my-filter pred s) 
    (if (null? s) 
        nil
        (let((x (car s)))
            (if (pred x) 
            (cons x (my-filter pred (cdr s)))
            (my-filter pred (cdr s))))))

(define (interleave lst1 lst2) 
   (cond ((null? lst1) (if (null? lst2) nil (interleave lst2 lst1)))
         (else (cons (car lst1) (interleave lst2 (cdr lst1)))))) 

(define (no-repeats s)
   (if (null? s) nil  
       (cons (car s) (no-repeats (filter (lambda (x) (not (= (car s) x))) (cdr s))))))
