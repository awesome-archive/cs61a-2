(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.

(define (cons-all first rests)
	(map (lambda (lst) (append (list first) lst)) rests)
)

(define (zip pairs)
	(define (zip-up pairs result)
		(if (null? pairs)
			result
			(zip-up (cdr pairs) (append (list (append (car result) (list (caar pairs)))) (list (append (cadr result) (cdar pairs)))))
		) 
	)
	(zip-up pairs '(() ()))
) 

;; Problem 17
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 17
  (define (enumerate-helper lst i result)
  	(if (null? lst)
  		result
  		(enumerate-helper (cdr lst) (+ i 1) (append result (list (list i (car lst)))))
  	)
  )
  (enumerate-helper s 0 nil)
 )
 ; END PROBLEM 17

;; Problem 18
;; List all ways to make change for TOTAL with DENOMS
(define (list-change total denoms)
	; BEGIN PROBLEM 18
	(cond
		((zero? total) (list nil))
     	((null? denoms) cons nil)
      	((> (car denoms) total) (list-change total (cdr denoms)))
     	(else (append (cons-all (car denoms) (list-change (- total (car denoms)) denoms)) (list-change total (cdr denoms))))
	)
  ; END PROBLEM 18
)

;; Problem 19
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr) expr)
        ((quoted? expr) expr)
        ((or (lambda? expr) (define? expr)) 
         (let ((form   (car expr))   ; lambda etc.
               (params (cadr expr))  ; 
               (body   (cddr expr))) 
           ; BEGIN PROBLEM 19
           (cons form (cons params (let-to-lambda body)))
           ; END PROBLEM 19
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 19
           (cons (cons 'lambda (cons (car (zip values)) (let-to-lambda body))) (let-to-lambda (cadr (zip values))))
           ; END PROBLEM 19
           ))
        (else
         ; BEGIN PROBLEM 19
         (map let-to-lambda expr)
         ; END PROBLEM 19
         )))
