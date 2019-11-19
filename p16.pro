domains
  element = i(integer);c(char);s(string)
  list_char = char*
  list_integer = integer*
  list_symbol = symbol*
predicates
  str_list(symbol, list_char)
  nb_str(integer, symbol)
  nb_to_str_list(list_integer, list_symbol)
  show_list(list_symbol)
  print
clauses
  nb_str(0, "zero").
  nb_str(1, "one").
  nb_str(2, "two").
  nb_str(3, "three").
  nb_str(4, "four").
  nb_str(5, "five").
  nb_str(6, "six").
  nb_str(7, "seven").
  nb_str(8, "eight").
  nb_str(9, "nine").
  str_list("",[]).
  str_list(S,[H|T]):- frontchar(S,H,S1), str_list(S1,T).
  nb_to_str_list([],[]).
  nb_to_str_list([H1|T1], [H2|T2]):-nb_str(H1,H2),nb_to_str_list(T1, T2).
  show_list([]).
  show_list([H|T]):- write(H), nl, show_list(T).
  print:- readterm(list_integer, X),nb_to_str_list(X, L), show_list(L).
