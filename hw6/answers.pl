%Ford Tang
%46564602
%CS 141
%Homework 6

compose(L1, L2, L3) :-
	append([L1H], [L2H], NewHead),
	append(NewHead, NewTail, L3),
	[L1H|L1T] = L1,
	[L2H|L2T] = L2,
	compose(L1T, L2T, NewTail).

compose([], [], []).
compose([], L2, L2) :- L2 = [_|_].
compose(L1, [], L1) :- L1 = [_|_].

solution(David, Peter, Jim, Robert, California, Oregon, Washington, Arizona, Baseball, Basketball, Handball, Football) :-
	Age = [11, 12, 13, 14],
	David = California,
	Peter = Washington,
	Jim = Basketball,
	Football is 11,
	Robert = Arizona,
	Peter is 12,
	Robert is 13,
	Handball is Washington + 1,
	member(David, Age),
	member(Peter, Age),
	member(Jim, Age),
	member(Robert, Age),
	member(California, Age),
	member(Oregon, Age),
	member(Washington, Age),
	member(Arizona, Age),
	member(Baseball, Age),
	member(Basketball, Age),
	member(Handball, Age),
	member(Football, Age),
	Baseball < Oregon,
	Jim > David,
	Peter =\= Jim,
	Oregon =\= Washington,
	Baseball =\= Football,
	Jim =\= Robert,
	Oregon =\= Arizona,
	Basketball =\= Handball.


distinct(L) :-
	[H|T] = L,
	not(member(H,T)),
	distinct(T).

distinct([]) :- true.


seatinghelper(Person1, Person2) :-
	English = [klefstad, emily, heidi, isacc],
	member(Person1, English),
	member(Person2, English),
	!.
seatinghelper(Person1, Person2) :-
	French = [beth, gong, isacc],
	member(Person1, French),
	member(Person2, French),
	!.

seatinghelper(Person1, Person2) :-
	Korean = [chris, dongjoon, fred, jane],
	member(Person1, Korean),
	member(Person2, Korean),
	!.

seatinghelper(Person1, Person2) :-
	Chinese = [dongjoon, gong, heidi, jane, klefstad],
	member(Person1, Chinese),
	member(Person2, Chinese),
	!.

seating(X):-
	X = [X0, X1, X2, X3, X4, X5, X6, X7, X8, X9],
	Female = [beth, emily, heidi, chris, jane],
	Male = [isacc, gong, dongjoon, fred],
	X0 = klefstad,
	member(X1, Female),
	seatinghelper(X0, X1),
	member(X2, Male),
	seatinghelper(X1, X2),
	member(X3, Female),
	distinct([X1, X2, X3]),
	seatinghelper(X2, X3),
	member(X4, Male),
	distinct([X1, X2, X3, X4]),
	seatinghelper(X3, X4),
	member(X5, Female),
	distinct([X1, X2, X3, X4, X5]),
	seatinghelper(X4, X5),
	member(X6, Male),
	distinct([X1, X2, X3, X4, X5, X6]),
	seatinghelper(X5, X6),
	member(X7, Female),
	distinct([X1, X2, X3, X4, X5, X6, X7]),
	seatinghelper(X6, X7),
	member(X8, Male),
	distinct([X1, X2, X3, X4, X5, X6, X7, X8]),
	seatinghelper(X7, X8),
	member(X9, Female),
	distinct([X1, X2, X3, X4, X5, X6, X7, X8, X9]),
	seatinghelper(X8, X9),
	seatinghelper(X9, X0).











