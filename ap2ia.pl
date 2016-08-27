
% somar duas listas e apresentar o resultado noutra

soma([],L,L).
soma(L,[],L).
soma([A|B],[C|D],[X|Y]) :- X is A + C, soma(B,D,Y).

% tirar elementos duplicados de uma lista

del_dup([],[]).
del_dup([X|A],B) :- member(X,A), del_dup(A,B),!.
del_dup([X|A],[X|B]) :- del_dup(A,B).

% retornar outra lista com os elementos maiores que N

mqn([],_,[]).
mqn([A|B],N,[A|C]) :- A>N, mqn(B,N,C).
mqn([A|B],N,C) :- A=<N, mqn(B,N,C).

% retornar os pares

pares([],[]).
pares([A|B],[A|C]) :- A mod 2 =:= 0, !, pares(B,C).
pares([_|B],C) :- pares(B,C).

% funcao membro

membro(X,[X|_]). % :- !.
membro(X,[_|B]) :- membro(X,B).

% teste do p

p(1).
p(2):-!.
p(3).

% mdc, contem erros

mdc(X,X,X).
mdc(X,Y,Z) :- X > Y, !, Xi is X-Y,mdc(Xi,Y,Z).
mdc(X,Y,Z) :- mdc(Y,X,Z).
mdc(X,Y,Z) :- X < Y, Yi is Y-X, mdc(X,Yi,Z).

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

impar(N):-(N mod 2)=:=1,write('É impar'),nl,!.
impar(_):-write('É par.'),nl.

anc(X,Y):-pai(X,Y).
anc(X,Y):-pai(X,Z),anc(Z,Y).

findall(X,anc(a,x),L).
setof(X,anc(a,x),L).

estdesc(X,L):-findall(X,anc(a,x),L).

tam([],0).
tam[_|X],N):-tam(X,Ni), N is Ni + 1.
qtddesc(X,N):-estdesc(X,L),tam(L,N). tamanho da lista


quebra(N,I,F):-Ni is round(N*100),
               I is Ni div 100,
               F is Ni mod 100.

espec(ana,dengue).
espec(ana,gripe).
espec(maria,virose).
espec(maria,dengue).
espec(joao,dengue).

mora(ana,fortaleza).
mora(maria,fortaleza).
mora(joao,sobral).
mora(chico,fortaleza).
mora(jose,sobral).

sint(chico,v).
sint(chico,f).
sint(chico,d).

sint(jose,f).
sint(jose,d).

doenca(X,dengue) :- sint(X,f),
                    sint(X,v),
                    sint(X,d).

doenca(X,virose) :- sint(X,f),
                    sint(X,v),
                    sint(X,d).

doenca(X,gripe) :- sint(X,f),
                    sint(X,d),
                    sint(X,v).

trata(M,P):-doenca(P,D),
            espec(M,D),
            mora(P,C),
            mora(M,C),
            write('Doença: '),write(D),write(' -> Médico: '),write(M),nl.

mdc(X,X,X).
mdc(X,Y,D):-X<Y,Y1 is Y-X,mdc(X,Y1,D).
mdc(X,Y,D):-X>Y,mdc(Y,X,D).

fatorial(0,1).
farorial(X,Y):-X1 is X-1,fatorial(X1,Y1),Y is X*Y1.