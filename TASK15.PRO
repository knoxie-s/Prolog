domains
	list=integer*
predicates
	readlist(list)
	printevensum(list, Integer)
	print
clauses
	readlist([H|T]) :- readint(H), !, readlist(T).
	readlist([]).
	printevensum([], S):- S = 0.
	printevensum([H|T], S):- H mod 2 = 1, printevensum(T, N), S = N.
	printevensum([H|T], S):- H mod 2 = 0, printevensum(T, N), S = N + H. 
	print :- readlist(L), printevensum(L, S), write("Summa = ", S), fail.