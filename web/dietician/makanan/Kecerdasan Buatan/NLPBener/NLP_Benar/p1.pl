katabenda([N], kata_benda(N)) :-
	member(N,[aku, kamu]).


katakerja([V], kata_kerja(V)) :-
	member(V,[makan, minum, pergi]).

sentence(S, kalimat(KB,KK) ) :-
	katabenda(N, KB),
	katakerja(V, KK),
        append(N,V,S).
	