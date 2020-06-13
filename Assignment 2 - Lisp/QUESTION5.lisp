;COMP 348 ASSIGNMENT 2
;WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
;DUE DATE: June 1st 2020
;QUESTION 5

(defun balancedp (list)
    (defparameter length1 (list-length list));get length of outer list
    (setq x nil);initialize the final result
    (dolist (n list);dolist acts like a foreach loop
        (cond
            ((listp n) (setq x (=(list-length n) length1)));if n is a list, check if its length is the same as length1
            (t (setq x t))
         )
    )
    (print x)  
)

(balancedp '(hello world (this assignment)))