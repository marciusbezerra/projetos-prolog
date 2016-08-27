% 1.

dist(a,b,1).
dist(a,d,2).
dist(a,d,3).
dist(a,c,2).
dist(b,c,1).
dist(b,d,1).
dist(b,d,2).
dist(c,d,1).

% 2.

mdc(X,X,X).
mdc(X,Y,Z):- X > Y, !, Xi is X-Y, mdc(Xi,Y,Z).
mdc(X,Y,Z):- mdc(Y,X,Z).
mdc(X,Y,Z):- X < Y, Yi is Y-X, mdc(X, Yi, Z).

intercala([X|A],[Y|B],[Z]):-intercala([A],[B],[X,Y|Z]).
