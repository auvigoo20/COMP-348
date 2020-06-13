;COMP 348 ASSIGNMENT 2
;WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
;DUE DATE: June 1st 2020
;QUESTION 1

(defun take-n (list n)
    (cond ((< n 1) ())
          ((> n (list-length list)) list)
          (t (last list (- (list-length list) (- n 1))))
        
           )

        )

(print (take-n '(1 2 3 4 5 6 7 8) 5))
