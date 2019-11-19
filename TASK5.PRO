predicates
	check
	print(Integer, Integer)
clauses
	check :-
		readint(X), readint(Y), print(X, Y), nl, fail.
	print(X, Y) :- X < Y , write(X, " smaller than ", Y).
	print(X, Y) :- X = Y , write(X, " equal ", Y).
	print(X, Y) :- X > Y , write(X, " bigger than ", Y).
