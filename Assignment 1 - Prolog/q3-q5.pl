% Written by: (Leader) Auvigoo Ahmed (40128901) & Tashfia Naharin Proma (40074403)
% COMP 348
% Assignment 1 Questions 3 - 5
% Due Date: May 18th 2020

team(['40128901', '40074403']).
student_info('40128901', 'Auvigoo', 'Ahmed').
student_info('40074403', 'Tashfia Naharin', 'Proma').
takes_course('40128901', 'comp', '348', 'ab').
takes_course('40128901', 'comp', '348', 'abae').
takes_course('40128901', 'comp', '352', 'aa').
takes_course('40128901', 'comp', '352', 'aaae').
takes_course('40074403', 'comp', '348', 'ab').
takes_course('40074403', 'comp', '348', 'abaf').
takes_course('40074403', 'econ', '203', 'ec').
course_schedule('comp', '348', 'ab', 'tue', '1315', '1545').
course_schedule('comp', '348', 'ab', 'thu', '1315', '1545').
course_schedule('comp', '348', 'abae', 'tue', '1615', '1705').
course_schedule('comp', '348', 'abae', 'thu', '1615', '1705').
course_schedule('comp', '352', 'aa', 'tue', '1830', '2100').
course_schedule('comp', '352', 'aa', 'thu', '1830', '2100').
course_schedule('comp', '352', 'aaae', 'tue', '1215', '1305').
course_schedule('comp', '352', 'aaae', 'thu', '1215', '1305').
course_schedule('comp', '348', 'abaf', 'tue', '1615', '1705').
course_schedule('comp', '348', 'abaf', 'thu', '1615', '1705').



/*---------------------------------------
 QUESTION 3 */
all_sections(CNAM, CNUM, L):- findall(S, course_schedule(CNAM,CNUM, S, _,_,_), List), list_to_set(List, L).
has_taken(S, [CNAM|[CNUM|[SEC|[]]]]):- team(X), member(S, X),takes_course(S, CNAM, CNUM, SEC).

has_taken2(S, [CNAM|[CNUM|[]]]):- team(X), member(S, X), takes_course(S, CNAM, CNUM,_).

all_subjects(S, L):- team(X), member(S, X), findall(CNAM, takes_course(S, CNAM, _, _), List), list_to_set(List, L).

all_courses(S, L):- team(X), member(S, X), findall([CNAM|[CNUM|[CSEC|[]]]], takes_course(S,CNAM, CNUM, CSEC), List), list_to_set(List, L).

all_courses2(S, L):- team(X), member(S, X), findall([CNAM|[CNUM|[]]], takes_course(S, CNAM, CNUM, _), List), list_to_set(List, L).

/*---------------------------------------*/

/* QUESTION 4 
team(X), member(S, X),
findall([CNAM|[CNUM|[]]], takes_course(S, CNAM, CNUM, _), List),
list_to_set(List, LL),
length(LL, NN),
write(S), write(' has only taken '), write(NN),
write(' courses and tutorials in summer 2020.'), nl, fail.

---------------------------------------*/

/* QUESTION 5 

Output of all_courses2('40128901', L). is:
	L = [[comp, '348'], [comp, '352']]
	false

Output of all_courses(40128901, L). is:
	false

The output for the first one gives a list since the student ID is in quotes, meaning that prolog evaluates it as an atom. The output of the second one is false because prolog evaluates it as a number.*/
