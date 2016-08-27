dist(pt(X1,Y1),pt(X2,Y2),D):-D is sqr((X2-X1),D1),sqr((Y2-Y1),D2), D is sqrt(D1+D2).
sqr(X,Y):-Y is X*X.
reta(pt(X1,Y1),pt(X2,Y2),pt(X3,Y3)):-((X2-X1)/(Y2-Y1))=:=((X3-X2)/(Y3-Y2)).
triangulo(pt(X1,Y1),pt(X2,Y2),pt(X3,Y3)) :- dist(pt(X1,Y1),(X2,Y2),D1),
                                            dist(pt(X1,Y1),(X3,Y3),D2),
                                            dist(pt(X2,Y2),(X3,Y3),D3),
                                            D1 < (D2+D3),
                                            D1 > abs(D2-D3),
                                            not reta(pt(X1,Y1),pt(X2,Y2),pt(X3,Y3)).

