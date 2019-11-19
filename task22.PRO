domains
	file = f
predicates
	ask_for_file(String)
	prepareFile(String)
	readFile(file, Integer)
	set_C(file, Integer, char)
	print
clauses
	ask_for_file(S) :-
		write("Enter the name of file: "),
		readln(S).
	readFile(F, K) :-
		not(eof(F)), !,
			readchar(C),
			set_C(F, K, C).
	readFile(F, K):- eof(F), K=0.
	set_C(F, K, C):- C = ' ', readFile(F, K2), K = 1 + K2.
	set_C(F, K, C):- C <> ' ', readFile(F, K).
	prepareFile(F):-
		existfile(F),!,
		openread(f, F),
		readdevice(f),
		readFile(f, K),
		closefile(f),
		readdevice(keyboard),
		nl,nl,
		R = K + 1,
		write("Number of words: ", R), nl,
		write("Press any key").
	prepareFile(F):- 
		not(existfile(F)),
		write(F, ": file doesn't exist"), nl.
	print:- ask_for_file(S), prepareFile(S).