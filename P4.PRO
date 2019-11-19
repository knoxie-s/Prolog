predicates
  f(real, real)
clauses
  f(X, Y):- X + Y < 1, Z = 2 * X, write("f = ", Z).
  f(X, Y):- X + Y >=1, Z = cos(X * Y), X + Y <= 1, write("f = ", Z).
  f(X, Y):- X + Y > 1, Z = sqrt(X + Y), write("f = ", Z).
  
