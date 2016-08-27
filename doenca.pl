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