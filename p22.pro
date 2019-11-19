domains
  file = f
predicates
  write_file(file)
  writeFile(string)
  % count_words(char, integer)
  % print
goal
  write("type file name: "),readln(F_N),
  writeFile(F_N).
clauses
  write_file(f):- not(eof(f)),!,
                  readchar(C),
                  write(C),
                  write_file(f).
  write_file(_).
  writeFile(F_N):-  existfile(F_N),!,
                    openread(f,F_N),
                    readdevice(f),
                    write_file(f),
                    closefile(f),
                    readdevice(keyboard),
                    nl,nl,
                    write("type any key"),
                    readchar(_).
                    writeFile(F_N):- write("file ", F_N, " not found").
  % print:-readln(S), existfile(S), nl, nl.
