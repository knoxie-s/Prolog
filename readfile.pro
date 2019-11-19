domains
  file = text_input_file
  list_integer = integer*
predicates
  file_numbers_to_list(file, list_integer, list_integer)
clauses
  file_numbers_to_list(File, Buffer, Buffer):-
    eof(File), !.
  file_numbers_to_list(File, Buffer, List):-
    readint(Number), !,
    file_numbers_to_list(File, [Number|Buffer], List).
  file_numbers_to_list(_File, _Buffer, _List):-
    write("bad file"), nl, fail.
goal
  readln(FileName),
  openread(text_input_file, FileName), !,
  readdevice(text_input_file),
  file_numbers_to_list(text_input_file, [], List),
  closefile(text_input_file).
