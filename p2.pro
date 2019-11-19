constants
  dep_id = 1
predicates
	employee_surname(integer, symbol)
	employee_salary(integer, integer)
	employee_dep_id(integer, integer)
	employee_kids(integer, integer)
	work_one_apartment(integer, integer)
  all_employee(integer, integer).
  all_salary(integer, integer, integer)
  more_than_one_kid(integer, integer)
	print_one_apart
  print_all_emp
  print_all_sal
  print_more_than_one
clauses
  employee_surname(23, "Tim").
  employee_surname(24, "Kuk").
  employee_surname(25, "King").
	employee_dep_id(23, 56).
	employee_dep_id(24, 57).
	employee_dep_id(25, 56).
  employee_dep_id(26, 1).
  employee_dep_id(27, 1).
  employee_salary(23, 5000).
  employee_salary(24, 6000).
  employee_salary(27, 8000).
  employee_kids(23, 4).
  employee_kids(24, 0).
  employee_kids(27, 2).
  employee_kids(25, 1).
	work_one_apartment(A, B):-employee_dep_id(A, C),employee_dep_id(B, C),A<>B.
  all_employee(A, B):-readint(B),employee_dep_id(A, B).
  all_salary(E, SAL1, SAL2):-readint(SAL2), employee_salary(E, SAL1), SAL1 > SAL2.
  more_than_one_kid(E, K):-employee_kids(E, K), K > 1.
	print_one_apart:-work_one_apartment(A, B), write(A, "in one dep", B), nl, fail.
  print_all_emp:-all_employee(A, _),write(A), nl, fail.
  print_all_sal:-all_salary(E, SAL1, _), write("SAL ", E, " = ", SAL1), nl, fail.
  print_more_than_one:-more_than_one_kid(E, K), write(E, " has ", K, " kids."), nl, fail.
