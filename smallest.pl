min(A, A, B) :- A =< B.
min(B, A, B) :- B =< A.

smallest(A, [A|[]]).
smallest(Min, [A|B]) :- smallest(SB, B), min(Min, A, SB).