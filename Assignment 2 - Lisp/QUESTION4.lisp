;COMP 348 ASSIGNMENT 2
;WRITTEN BY: Auvigoo Ahmed (ID: 40128901) & Aseel Meeran Babu Hussain (ID: 40137262)
;DUE DATE: June 1st 2020
;QUESTION 4

(defun leafp (L);HELPER FUNCTION TO CHECK IF L IS A LEAF
    (cond
        ((null L) t)
    (t(and (= (list-length L) 1) (listp L) ))
        )
    )

(defun nodep (L);HELPER FUNCTION TO CHECK IS L IS A NODE
    (and (= (list-length L) 3) (listp L))
    )

(defun getnode(L);GETTING THE NODE
    (car L)   
    )

(defun getleft (L);GETTING THE LEFT NODE/ITEM
   (car (cdr L))
    )

(defun getright (L);GETTING THE RIGHT NODE/ITEM
    (car(cdr(cdr L)))
    )

(defun checkleft (L);COMPARING THE LEFT ELEMENT WITH ITS PARENT NODE
    (cond
        ((null(getleft L)) t)
        ((< (car(getleft L)) (getnode L))t)
        )
    )

(defun checkright (L);COMPARING THE RIGHT ELEMENT WITH ITS PARENT NODE
    (cond
        ((null(getright L)) t)
        ((> (car(getright L)) (getnode L))t)
       )  
    )

(defun binaryp (L)
    (cond
        ((null L) t)
        ((leafp L) t)
        ((and (nodep L) (leafp (getleft L)) (leafp (getright L)))   (and (checkleft L) (checkright L)));CASE 1: WHEN THE CHILDREN ARE LEAVES
        ((and (nodep L) (nodep (getleft L)) (leafp (getright L)))   (and (binaryp (getleft L)) (checkleft L) (checkright L)));CASE 2: WHEN LEFT IS A NODE AND RIGHT IS A LEAF
        ((and (nodep L) (leafp (getleft L)) (nodep (getright L)))   (and (checkleft L) (binaryp (getright L)) (checkright L)));CASE 3: WHEN LEFT IS A LEAF AND RIGHT IS A NODE
        ((and (nodep L) (nodep (getleft L)) (nodep (getright L)))   (and (binaryp (getleft L)) (binaryp (getright L)) (checkleft L) (checkright L)));CASE 4: WHEN THE CHILDREN ARE NODES
        )  
    )


(print(binaryp '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13) ())))))