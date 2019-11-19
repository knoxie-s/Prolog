predicates
  age(symbol, integer)
  male(symbol)
  female(symbol)
  hair_color(symbol, symbol)
  visited_city(symbol, symbol)
  man_redhead(symbol, symbol, integer)
  % adults(symbol, integer)
  visited_cities(symbol, symbol)
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
    hair_color("Tim","brown").
    hair_color("Bruce", "redhead").
    hair_color("Robert", "black").
    hair_color("Anna", "readhead").
    visited_city("Tim", "Moscow").
    visited_city("Tim", "Sankt Peterburg").
    visited_city("Tim", "Kazan").
    visited_city("Bruce", "Moscow").
    visited_city("Bruce", "Sochi").
    visited_city("Anna", "Kazan").
    man_redhead(LASTNAME1, LASTNAME2, AGE):- hair_color(LASTNAME2, "redhead"), age(LASTNAME2, AGE), male(LASTNAME2), AGE>=18, LASTNAME1 = LASTNAME2, !.
    visited_cities(LASTNAME1, CITY):-man_redhead(LASTNAME1, _, _), visited_city(LASTNAME1, CITY).
    print:-man_redhead(LASTNAME1, _, AGE), write(LASTNAME1, " ", AGE), nl, fail.
    print:-visited_cities(LASTNAME1, CITY), write(LASTNAME1, " ", CITY), nl, fail.
