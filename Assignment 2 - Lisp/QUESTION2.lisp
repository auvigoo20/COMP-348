;COMP 348 ASSIGNMENT 2
;WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
;DUE DATE: June 1st 2020
;QUESTION 2

(defun take-n (list n);HELPER FUNCTION TO GET SECOND HALF
    (cond ((< n 1) ())
          ((> n (list-length list)) list)
          (t (last list (- (list-length list) (- n 1))))    
           )
        )

(defun first-half (list n);HELPER FUNCTION TO GET FIRST HALF
    (cond ((= n 0) ())
          ((null list) ())
          (t (cons (car list) (first-half (cdr list) (- n 1))))
        )
    )

(defun reverse-cut-in-half (list)
    (let ((length (list-length list) ))
         (let ((n (ceiling (/ length 2))))
              (cond ((null list) ())
                    (t
                     (reverse(list(first-half list n) (take-n list (+ n 1))))
                     )  
                  )          
              )     
         )  
    )

(print (reverse-cut-in-half '(a b c)))
