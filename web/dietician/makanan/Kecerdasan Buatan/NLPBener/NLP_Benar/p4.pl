subyek([S], sb(S)) :-
	member(S,[aku, kamu]).


frasekatakerja([V], fkk(V)) :-
	member(V,[makan, minum]).

frasepelengkap([P], fp(P)) :-
	member(P,[baik, jahat]).

fraseketerangan([K], fk(K)) :-
	member(K,[dirumah, disana]).

sentence(ST, kalimat(SB,FKK) ) :-
	subyek(S, SB),
	frasekatakerja(V, FKK),
        append(S,V,ST).
	
sentence(ST, kalimat(SB,FP) ) :-
	subyek(S, SB),
	frasepelengkap(P, FP),
        append(S,P,ST).

sentence(ST, kalimat(SB,FK) ) :-
	subyek(S, SB),
	fraseketerangan(K, FK),
        append(S,K,ST).