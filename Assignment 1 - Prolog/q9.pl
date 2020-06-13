% Written by: (Leader) Auvigoo Ahmed (40128901) & Tashfia Naharin Proma (40074403)
% COMP 348
% Assignment 1 Question 9
% Due Date: May 18th 2020

/*------------QUESTION 9---------------*/

family(
  person(john, cohen, date(17,may,1990), unemployed),
        person(lily, cohen, date(9,may,1990), unemployed),[] ).
family(
  person(john, armstrong, date(7,may,1988), unemployed),
  person(lily, armstrong, date(29,may,1961), unemployed),[]).
family(
  person(eric, baily, date(7,may,1963), works( bbc, 2200)),
  person(grace, baily, date(9,may,1965), works( ntu, 1000)),
  [ person(louie, baily, date(25,may,1983), unemployed) ] ).
family(
  person(eric, baily, date(7,may,1963), works( acc, 21200)),
  person(grace, baily, date(9,may,1965), works(ntnu, 12000)),
  [ person( louie, baily, date(25,may,1983), unemployed) ]).
family(
  person(eric, fox, date(27,may,1970), works(bbc, 25200)),
  person(grace, fox, date(9,may,1971), works(ntbu, 13000)),
  [ person(louie, fox, date(5,may,1993), unemployed) ]).
family(
  person(tom, cohen, date(7,may,1960), works( bcd, 15200)),
  person(ann, cohen, date(29,may,1961), unemployed),
  [ person(pat, cohen, date(5,may,1983), works(bcd, 15200)),
    person(jim, cohen, date(5,may,1983), works(bcd, 15200))]).
family(
  person(bob, armstrong, date(12,oct,1977), works(ntnu, 12000)),
  person(liz,armstrong, date(6,oct,1975), unemployed),
  [ person(bob, armstrong, date(6,oct,1999), unemployed),
    person(sam,armstrong, date(8,oct,1998), unemployed) ]).
family(
  person(tony, oliver, date(7,may,1960), works( bbc, 35200)),
  person(anny, oliver, date(9,may,1961), unemployed),
  [ person(patty, oliver, date(8,may,1984), unemployed),
    person(jimey, oliver, date(5,may,1983), unemployed) ]).
family(
  person(jack, fox, date(27,may,1940), unemployed),
  person(jane, fox, date(9,aug,1941), works( ntu, 13050)),
  [ person(andy, fox, date(5,aug,1967), works(com, 12000)),
    person(kai, fox, date(5,jul,1969), unemployed) ]).

husband(X) :- family( X, _, _).
wife(X) :- family( _, X, _).
child(X) :- family( _, _, Children), member(X, Children).
exists(Person) :- husband(Person); wife(Person); child(Person).
dateofbirth(person(_, _, Date, _), Date).
salary(person(_, _, _, works(_, S)), S).
salary(person(_, _, _, unemployed), 0).



/*----------ANSWER a)----------*/


totalIncome(family(H, W, C), Sum):- family(H, W, C), 
   			findall(Husband,family(person(_, _, _, works(_, Husband)), W, C), HusbandList), 
 			findall(Wife, family(H, person(_, _, _, works(_, Wife)), C), WifeList), 
    		append(HusbandList, WifeList, HWList),
 			findall(X, member(person(_, _, _, works(_, X)),C), ChildList), 
    		append(ChildList, HWList, TotalList), foldl(plus, TotalList, 0, Sum).

/*---------ANSWER b)------------

totalIncome(family(person(X, Y, _, _), _, _), S),
print("Total income of "), print(X),print(""),
print(Y), print("'s family is "), print(S), print(" $."), nl, nl, fail.

----------ANSWER c)------------

family(person(X, Y, _, _), W, C), length(C, NumChild), 
NumFamMem is 2+NumChild, totalIncome(family(H, W, C), S), Avg is S/NumFamMem, Avg < 2000, 
print("The families that have income per family member less than 2000 are: "),nl, 
print(X), print(""),print(Y), print("'s family"),print(" with income of "), 
print(Avg), print(" $ per family member"), nl, nl, fail.

----------ANSWER d)---------

family(person(FNDad, LNDad, _, _), person(FNMom, LNMom, _, _), C),totalIncome(family(H,W,C), Sum),
findall(X, member(person(_, _, _, works(_, X)),C), ChildList), foldl(plus, ChildList, 0, ChildSum), 
Parents is Sum - ChildSum, Parents < ChildSum, print(FNDad), print(""), print(LNDad), print(" and "), 
print(FNMom), print(" "),print(LNMom), print("'s children make more money than them combined."), nl,
nl, fail.
*/







