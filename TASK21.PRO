domains
	file = f
predicates
	ask_for_file(String)
	prepareFile(String)
	readFile(file, Integer)
	print
clauses
	ask_for_file(S) :-
		write("Enter the name of file: "),
		readln(S).
	readFile(F, K) :-
		not(eof(F)), !,
			readchar(C),
			write(C, ""),
			readFile(F, K2),
			K = 1 + K2.
	readFile(F, K):- eof(F), K=0.
	prepareFile(F):-
		existfile(F),!,
		openread(f, F),
		readdevice(f),
		readFile(f, K),
		closefile(f),
		readdevice(keyboard),
		nl,nl,
		write("Number of symbols: ", K), nl,
		write("Press any key").
	prepareFile(F):- 
		not(existfile(F)),
		write(F, ": file doesn't exist"), nl.
	print:- ask_for_file(S), prepareFile(S).