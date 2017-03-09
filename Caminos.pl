conecta(a,b).
conecta(d,a).
conecta(d,c).
conecta(e,d).
conecta(e,c).
conecta(c,b).
conecta(c,a).

ruta(A,B,[A,B]):-conecta(A,B),!.
ruta(A,B,[A|R1]):-conecta(A,N),N\=B,ruta(N,B,R1),!.
ruta(A,B,R1):-conecta(B,N),N\=A,ruta(A,N,R1),!.
ruta(A,B,[A,B]):-conecta(B,A),!.
