%% 1. 

inserir(X,L,L1):-excluir(X,L1,L).

%% 2.

excluir(X,[X|C],C).
excluir(X,[Y|C],[Y|D]):-excluir(X,C,D).

