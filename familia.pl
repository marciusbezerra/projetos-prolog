progenitor(joao,maria).
progenitor(joao,julia).
progenitor(maria,jose).
progenitor(maria,junior).
progenitor(junior,paulo).
progenitor(junior,joana).
progenitor(ana,julia).
progenitor(julia,chica).
progenitor(chica,lulu).
progenitor(juliano,chica).
progenitor(juliano,lucia).

sexo(joao,m).
sexo(maria,f).
sexo(junior,m).
sexo(jose,m).
sexo(ana,f).
sexo(julia,f).
sexo(chica,f).
sexo(juliano,m).
sexo(paulo,m).
sexo(joana,f).
sexo(lulu,m).
sexo(lucia,f).

pai(X,Y):-progenitor(X,Y),sexo( 