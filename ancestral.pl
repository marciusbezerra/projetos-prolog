

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