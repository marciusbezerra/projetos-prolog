
impar(N):-(N mod 2) =:= 1,nl,write(N),write(' é impar'),nl.
impar(N):-(N mod 2) =:= 0,nl,write(N),write(' é par'),nl.

Num:-write('Digite o múmero: '), read(N),nl,impar(N).
