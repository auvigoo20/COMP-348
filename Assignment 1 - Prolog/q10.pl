% Written by: (Leader) Auvigoo Ahmed (40128901) & Tashfia Naharin Proma (40074403)
% COMP 348
% Assignment 1 Question 10
% Due Date: May 18th 2020

/*-------------QUESTION 10---------------*/

/*------ANSWER a)-----------*/

not(0,1).
not(1,0).
and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).
or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).
outputSum(A, B, S):- or(A, B, Temp1), and(A, B, Temp2),
    not(Temp2, Temp3), and(Temp1, Temp3, S).
outputCarry(A, B, C):- and(A, B, C).

/*-------ANSWER b)-----------
?-outputSum(0, _,S), outputCarry(0, _, C).
*/