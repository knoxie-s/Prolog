predicates
	man(String)
	woman(String)
	parent(String, String)
	kol_det(String, String, Integer)

	brother(String, String)
	sister(String, String)
	uncle(String, String)
	grandmother(String, String)

	printbro
	printsis
	printgmoth
	printuncle
clauses
	man("Jake").
	man("Klause").
	man("Blake").
	man("Frank").
	woman("Anna").
	woman("Lena").
	woman("Aline").
	parent("Anna", "Klause").
	parent("Anna", "Frank").
	parent("Frank", "Aline").
	parent("Lena", "Aline").
	parent("Frank", "Blake").
	parent("Lena", "Blake").
	kol_det("Lena", "Frank", 2).

	brother(X, Y) :- parent(Z, X), parent(Z, Y), man(X), X <> Y.
	sister(X, Y) :- parent(Z, X), parent(Z, Y), woman(X), X <> Y.
	uncle(X, Y) :- parent(Z, X), parent(Z, P), parent(P, Y), X <> P.
	grandmother(X, Y) :- parent(X, Z), parent(Z, Y), X <> Y.

	printbro :- brother(X, Y), write(X, " - is brother of - ", Y), nl, fail.
	printsis :- sister(X, Y), write(X, " - is sister of - ", Y), nl, fail.
	printgmoth :- grandmother(X, Y), write(X, " - is grandmother of - ", Y), nl, fail.
	printuncle :- uncle(X, Y), write(X, " - is uncle of - ", Y), nl, fail.

