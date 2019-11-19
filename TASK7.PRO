predicates
	readparams(Integer, Integer, Integer)
	calcD(Integer, Integer, Integer, Integer)
	calc_result(Integer, Integer, Integer)
	solve_square
clauses
	readparams(A, B, C) :- 
		write("A = "), readint(A),
		write("B = "), readint(B),
		write("C = "), readint(C), nl,
		write(A,"x^2 + ", B, "x + ", C, " = 0"), nl.
	
	calcD(A, B, C, D) :- D = B * B - 4 * A * C.
	
	calc_result(A, B, D) :- D > 0,
				X1 = (-B + sqrt(D)) / (2 * A),
				X2 = (-B - sqrt(D)) / (2 * A),
				write("X1 = ", X1), nl,
				write("X2 = ", X2).
	calc_result(A, B, D) :- D = 0,
				X = -B/(2 * A),
				write("X = ", X), nl.
	calc_result(A, B, D) :- D < 0, write("hasn't solving!"), nl, A = A - B.

	solve_square :- readparams(A, B, C), calcD(A, B, C, D), calc_result(A, B, D), fail.