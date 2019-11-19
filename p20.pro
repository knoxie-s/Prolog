predicates
  string_len(string, integer)
  print
clauses
  string_len("", 0).
  string_len(S, L):-frontchar(S, _, R), string_len(R, L0), L = L0 + 1.
  print:-readln(S), string_len(S, L), write("len = ", L), nl.
