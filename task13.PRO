predicates
	parent(String, String)
	child(String, String)
	print
clauses
	parent("Jake", "Anna").
	parent("Lena", "Anna").
	parent("Anna", "Blake").
	parent("Frank", "Blake").
	parent("Anna", "Kelly").
	parent("Frank", "Kelly").
	parent("Anna", "Nick").
	parent("Frank", "Nick").
	parent("Nick", "Nicolas").
	parent("Leyla", "Nicolas").

	child(X, Y) :- parent(X, Y).
	child(X, Y) :- parent(X, P), child(P, Y).

	print :- child(X, Y), write(Y, " child ", X), nl, fail.
