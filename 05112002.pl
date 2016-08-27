inpos(X,1,[A|B],[X,A|B]):-!.
inpos(X,N,[A|B],[A|C]):-Ni is N-1, inpos(X,Ni,B,C).

top([X|Y],X).
push(X,[A|B],[X,A|B]).
pop([X|Y],Y).

pushult(X,[],[X]).
pushult(X,[A|B],[A|C]):-pushult(X,B,C).


% REMOVER TODAS AS OCORENCIAS DE UM ITEM
%
% remover(X,[],[]).
% remover(X,[X|A],B):-member(X,A),!,remover(X,A,B).
% remover(X,[X|A],A):-!.
% remover(X,[Y]A],[Y|B]):-remover(X,A,B).

% FILA PARA CASA
%
% insere no 1o.
% remove do ultimo.

membro(X,A):-member(X,A).

% append (X,Y,Z) [1,2,3],[4,5] = [1,2,3,4,5]