predicates
	win(String, String)
	fighter(String)
	winner(String)
	sport(String)
	print
clauses
	win("Jake", "Blake").
	win("Blake", "Anna").
	win("Jake", "Anna").
	win("Greg", "Blake").
	win("Greg", "Anna").
	win("Lena", "Blake").
	win("Jake", "Lena").
	win("Greg", "Lena").

	fighter(X) :- win(X, P), win(Z, X), P = Z, write(X), nl.
	winner(X) :- win(X, P), not (win(Z, X)), write(X), P=X,Z=P, nl.
	sport(X) :- win(Z, X), not (win(X, P)), write(X), Z=P,P=Z, nl.

	print :- write("Fighter:"), nl, fighter(X),
			write("Winner:"), nl, winner(X),
			write("Sport:"), nl, sport(X), fail.