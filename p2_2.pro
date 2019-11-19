predicates
	% employee_surname(integer, symbol)
	% employee_occupation(integer, symbol)
	% employee_salary(integer, symbol)
	employee_dep_id(integer, integer)
	employee_husband(integer, symbol)
	employee_wife(integer, symbol)
	% employee_kids(integer, integer)
	work_one_apartment(integer, integer)
  
	print
clauses
	employee_dep_id(23, 56).
	employee_dep_id(24, 57).
	employee_dep_id(25, 56).
  employee_husband(23, "Tim").
  employee_husband(25, "John").

	work_one_apartment(A, B):-employee_dep_id(A, C),employee_dep_id(B, C),A<>B.

	% print:-work_one_apartment(A, B), write(A, "in one dep", B), nl, fail.
