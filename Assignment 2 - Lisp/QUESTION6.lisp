;COMP 348 ASSIGNMENT 2
;WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
;DUE DATE: June 1st 2020
;QUESTION 6

(defun triangle (size)
    (cond
        ((= size 0) (princ "invalid number; please enter a positive or a negative integer"))
        ((not(integerp size)) (princ "invalid number; please enter a positive or a negative integer"))
        ((> size 0);WHEN POSITIVE INTEGER
         (let ((i size)) 
            (loop
                (when (< i 1) (return))
                (let ((j i)) 
                    (loop
                       (when (< j 1) (return))
                       (princ "*")
                       (decf j)
                      )
                    )
               (terpri)
               (decf i)    
              )
           )
        )

        ((< size 0);WHEN NEGATIVE INTEGER 
         (let ((positivesize(- 0 size)) (i 0))
              (loop
               (when (>= i positivesize) (return))
               (let ((j 0)) 
                    (loop
                     (when (>= j i) (return))
                     (princ " ")
                     (incf j)
                     )
                    )
               (let ((k positivesize)) 
                    (loop
                     (when (<= k i) (return))
                     (princ "*")
                     (decf k)
                     )
                    )
               (terpri)
               (incf i)
               )
             )
           )
         )  
)

(triangle -5)