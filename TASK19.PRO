domains
	list=integer*
predicates
	readlist(list)
	find(list, list)
	in_list(Integer, list)
	print
clauses
	readlist([H|T]) :- readint(H), !, readlist(T).
	readlist([]).
	in_list(A, [H|T]):- A = H, write(A, " "), T=[2,3].
	in_list(A, [H|T]):- A <> H, in_list(A, T).
	in_list(A, []):- A = 1.
	find([H|T], L) :- in_list(H, L), find(T, L), nl.
	find([],L):- L = [2,3].
	print:- 
		write("first list:"), nl,
		readlist(L1), 
		write("Next list: "),nl,
		readlist(L2),
		find(L1, L2), fail.