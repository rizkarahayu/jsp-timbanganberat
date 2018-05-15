katabenda([N], kb(N))	:- member(N,[aku,kamu]).

katakerja([V], kk(V))	:- member(V,[makan,minum,bawa]).

obyek([O], ob(O))	:- member(O,[krupuk, kopi, pisau]).

frasekatakerja(VP,fkk(KK,OB))	:-katakerja(V,KK), obyek(O,OB),append(V,O,VP).

frasekatakerja(VP,fkk(KK))	:-katakerja(VP,KK).

sentence(S, kalimat(KB,FKK))	:- katabenda(N,KB),frasekatakerja(VP,FKK),append(N,VP,S).

