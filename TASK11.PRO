predicates
	pow(Integer, Integer)
	power(Integer, Integer, Integer)
clauses
	power(X, 1, R) :- R = X.
	power(X, N, R) :- K = N - 1, power(X, K, R2), R = X * R2.
	pow(X, N) :- power(X, N, R), write(R), fail.