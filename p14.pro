domains
  element = i(integer);c(char);s(string)
  list = integer*
predicates
  list_len(integer, list)
  print
clauses
  list_len(0, []).
  list_len(N, [_|T]):- list_len(N_T, T), N = N_T + 1.
  print:- list_len(N, [20, 3, -4]), write("len of list = ", N), nl.
