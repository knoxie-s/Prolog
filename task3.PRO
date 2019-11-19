predicates
	f(Integer, Integer)
	a(Integer, Integer)
	b(Integer, Integer)
clauses
	f(X, Y) :- a(X, R1), b(Y, R2), R = 3 * Y * R1 + sin(X * Y) * R2, write("Result: ", R), fail.
	a(X, R1) :- R1=sqrt(abs(X)).
	b(Y, R2) :- R2=cos(Y) + 2.