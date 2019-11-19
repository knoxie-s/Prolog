predicates
  fib(integer, integer)
  print
clauses
  fib(1, 0).
  fib(2, 1).
  fib(K, F):-K1=K-1, fib(K1,F1), K2=K-2, fib(K2,F2), F=F1+F2.
  print:- readint(N), fib(N,X), write("X = ", X), nl.
