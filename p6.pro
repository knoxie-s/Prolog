predicates
  max1(integer, integer, integer)
  print
clauses
  max1(X, Y, Z):- Z = Y, X < Y.
  max1(X, Y, Z):- Z = X, X >= Y.
  print:- readreal(X), readreal(Y), max1(X, Y, Z), write("max = ", Z), nl.
