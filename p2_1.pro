predicates
	employee_dep_id(integer, integer)
	work_one_apartment(integer, integer)
	print
clauses
	employee_dep_id(23, 56).
	employee_dep_id(24, 57).
	employee_dep_id(25, 56).

	work_one_apartment(A, B):-employee_dep_id(A, C),employee_dep_id(B, C),A<>B.

	% print:-work_one_apartment(A, B), write(A, "in one dep", B), nl, fail.
