predicates
	discipline(String, Integer)
	ask_for_discipline(String)
	find_currents(String)
	find_previous(String)
	find_next(String)
	writeln(String)
	print
clauses
	discipline("Internship", 1).
	discipline("Artificial Intelligence Systems", 2).
	discipline("Physical Culture", 2).
	discipline("Academic writing in English", 3).
	discipline("Philosophy", 3).
	discipline("Automated systems software", 3).
	discipline("System design of digital devices", 3).
	discipline("Concept of graduate qualification work", 3).
	discipline("Automation of design work", 3).
	discipline("Project documentation", 3).
	discipline("Protection of information", 3).
	discipline("Research project", 3).
	discipline("Undergraduate practice", 4).
	discipline("Graduation Qualification", 4).

	ask_for_discipline(D):- write("Enter title of discipline: "), readln(D).

	find_previous(D):- discipline(D, S), discipline(D2, S2), S > S2, write(D2), nl.
	find_currents(D):- discipline(D, S), discipline(D2, S), write(D2), nl.
	find_next(D):- discipline(D, S), discipline(D2, S2), S < S2, write(D2), nl.
	
	writeln(S):- write(S), nl.

	print:- 
		ask_for_discipline(D),
		writeln("Previous disciplines:"), find_previous(D), nl,
		writeln("Current disciplines:"), find_currents(D), nl,
		writeln("After:"), find_next(D), nl, fail.
	
	
