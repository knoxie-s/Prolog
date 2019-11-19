  predicates
    age(symbol, integer)
    male(symbol)
    female(symbol)
    adults(symbol, integer)
    print
  clauses
      age("Anna", 8).
      age("Tim", 24).
      age("Robert", 10).
      age("Bruce", 32).
      age("Emily", 29).
      age("Mary", 42).
      male("Tim").
      male("Robert").
      male("Bruce").
      female("Anna").
      female("Emily").
      female("Mary").

      adults(LASTNAME, AGE):- age(LASTNAME, AGE), male(LASTNAME), AGE>=18.
      print:-adults(LASTNAME, AGE), write(LASTNAME, " = ", AGE), nl, fail.
