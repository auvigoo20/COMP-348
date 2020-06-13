% Written by: (Leader) Auvigoo Ahmed (40128901) & Tashfia Naharin Proma (40074403)
% COMP 348
% Assignment 1 Question 11
% Due Date: May 18th 2020

/*-----QUESTION 11----------*/

lucas(1, [2]).
lucas(2, [1,2]).
lucas(N, [Sum,X,Y|Z]) :-
    N > 2,
    Temp is N - 1,
    lucas(Temp, [X,Y|Z]),
    Sum is X + Y.

reverse([], []).
reverse([H|T], L):- reverse(T, Temp),
    		append(Temp, [H], L).



/*------------------------------
?-lucas(8,L), reverse(L, LL).
*/