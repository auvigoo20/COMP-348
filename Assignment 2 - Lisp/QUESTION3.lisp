;COMP 348 ASSIGNMENT 2
;WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
;DUE DATE: June 1st 2020
;QUESTION 3

(defun removechar (list);HELPER FUNCTION TO REMOVE CHARACTERS
    (cond ((null list) nil)
          ((numberp (car list)) (cons (car list) (removechar (cdr list))))
          (t (removechar (cdr list)))
        )
    )

(defun removedupli (list);HELPER FUNCTION TO REMOVE DUPLICATES NOT IN ORDER
    (cond ((null list) nil)
          ((not (member (car list) (cdr list))) (cons (car list) (removedupli (cdr list))))
          ((member (car list) (cdr list))   (removedupli(cdr list)))
        )
    )

(defun removedupliorder (list);HELPER FUNCTION TO REMOVE DUPLICATES IN ORDER
    (cond
        ((null list) list)
        (t (reverse(removedupli (reverse list))))
        
        )
    
    
    )

(defun flattenincomplete (list);HELPER FUNCTION TO FLATTEN THE LIST WITHOUT MODIFYING ITS CONTENTS
    (cond ((null list) nil)
          ((atom (car list)) (cons (car list) (flattenincomplete (cdr list))))
          (t (append (flattenincomplete (car list)) (flattenincomplete (cdr list))))
        ) 
    )

(defun flatten (list)
   (removedupli(removechar (flattenincomplete list)))

    )


(print (removedupliorder (removechar (flattenincomplete '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))))