domains
	list=integer*
predicates
	readlist(list)
	findmax(list, Integer, Integer)
	setR(Integer, Integer, Integer)
	print
clauses
	readlist([H|T]) :- readint(H), !, readlist(T).
	setR(M, R2, R):- M < R2, R = R2.
	setR(M, R2, R):- M >= R2, R = M.
	findmax([], M, R):- R=M.
	findmax([H|T], M, R):- M >= H, findmax(T, M, R).
	findmax([H|T], M, R) :- M < H, findmax(T, H, R2), setR(M, R2, R).
	print :- readlist(L), H=0, findmax(L, H, R), write("MAX = ", R),nl, fail.