progenitor(maria,josé).
progenitor(joão,josé).
progenitor(joão,ana).
progenitor(josé,júlia).
progenitor(josé,íris).
progenitor(íris,jorge).

sexo(joão,masculino).
sexo(josé,masculino).
sexo(jorge,masculino).
sexo(maria,feminino).
sexo(júlia,feminino).
sexo(ana,feminino).
sexo(íris,feminino).

namorada(marcius,nadia).

filho(X,Y):-progenitor(Y,X).
mae(X,Y):-progenitor(X,Y),sexo(X,feminino).
avo(X,Y):-progenitor(N,Y),progenitor(X,N).
irma(X,Y):-progenitor(N,X),progenitor(N,Y),sexo(X,feminino).

/*
Comentário
*/

antepassado(X,Y):-progenitor(X,Y).
antepassado(X,Y):-progenitor(X,N),antepassado(N,Y).

descendente(X,Y):-progenitor(Y,X).
descendente(X,Y):-progenitor(N,Y),descendente(X,N).

mdc(X,X,X).
mdc(X,Y,D):-X<Y,Y1 is Y-X,mdc(X,Y1,D).
mdc(X,Y,D):-X>Y,mdc(Y,X,D).

fatorial(0,1).
farorial(X,Y):-X1 is X-1,fatorial(X1,Y1),Y is X*Y1.