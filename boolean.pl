
% Truth table for AND
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% Truth table for OR
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% Truth table for NOT
neg(true, false).
neg(false, true).

% (A AND B) OR (NOT A AND NOT B)
boolean(A, B, Result) :-
    and(A, B, X),
    neg(A, NA),
    neg(B, NB),
    and(NA, NB, Y),
    or(X, Y, Result).
