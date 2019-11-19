domains
  list_integer = integer*
  list_sub = list_integer*
predicates
  equal_lists(list_integer, list_integer)
  is_sub_list(list_integer, list_sub)
  print
clauses
  equal_lists([],[]).
  equal_lists([H1|T1],[H2|T2]):-H1=H2, equal_lists(T1, T2).
  is_sub_list(L,[H|T]):-equal_lists(L, H);is_sub_list(L, T).
  print:-is_sub_list([1, 2, 3], [[5, 8], [1, 2, 3]]).
  % print:-show_list([[2, 3], [5, 6, 7], [3, 9, 1]]).
