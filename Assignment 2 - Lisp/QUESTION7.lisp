;COMP 348 ASSIGNMENT 2
;WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
;DUE DATE: June 1st 2020
;QUESTION 7

;PART A
(defun collatz (n) 
    (cond
        ( (= n 1) nil );BASE CASE
        
        ((minusp  n) (and (princ "Error: invalid input") nil))  
        
        ((floatp n) (and (princ "Error: invalid input") nil)) 
        
        (t 
            (let ((x n)) 
                (if (evenp x) 
                    (let ((x (/ x 2)))                       ; THEN
                        (if
                            (integerp x)  (append (list x)  (collatz x) )
                        )
                    )
                   (let ((x (+ (* 3 x) 1)))                     ; ELSE
                        (append (list x)  (collatz x))
                    )
                )
            ) 
        )
    )
)

;PART B
(setq n 1)
(loop
(when (= n 21) (return))
(print (collatz n))
(setq n (+ n 1))
)
