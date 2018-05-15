%%deklarasi
katabenda([N], kb(N))		:- member(N,[kerupuk, air, daun]).
kataganti([P], kp(P))		:- member(P,[aku, kau, engkau]).
katakerja([V], kk(V))		:- member(V,[makan, lihat, beri,minum]).
katasifat([S], ks(S))		:- member(S,[manis, hitam, hijau]).
tempat([T], kt(T))			:- member(T,[kampus, warung, sekolah]).
waktu([W],kw(W))			:- member(W,[pagi, kemarin, malam]).
sufiks([F], suf(F))			:- member(F,[an,i,kan,ku,mu,nya,kah,lah,tah]).
prefiks([PR], prf(PR))		:- member(PR,[me, di, mem, ke]).
konjungsi([K], k(K))		:- member(K,[dan, karena, saat]).
preposisi([PE], pep(PE))	:- member(PE,[akan, dengan]).
kataseru([SE], se(SE))		:- member(SE,[asyik, aduhai, amboi, wah, wow, aduh, masa]).
katatanya([TA], kt(TA))		:- member(TA,[apa, kapan, kenapa, mengapa, bagaimana, siapa, dimana]).
numeralia([NU], num(NU))	:- member(NU,[satu, dua, tiga, empat, seratus, seribu]).
tandabaca([TD], tn(TD))		:- member(TD, [. , !, ?]).

%%keterangan
keterangan(KR, ket(KT))		:- tempat(KR,KT).
keterangan(KR, ket(KW))		:- waktu(KR,KW).
keterangan(KR, ket(PRF, KT)):- prefiks(PR, PRF), tempat(T,KT), append(PR, T, KR).
keterangan(KR, ket(PRF, KW)):- prefiks(PR, PRF), waktu(W,KW), append(PR, W, KR).

%%subject
subject(SU, sub(KB))	:- katabenda(SU,KB).
subject(SU, sub(P))		:- kataganti(SU,P).
obyek(O, ob(KB))		:- katabenda(O,KB).
obyek(O, ob(KP))		:- kataganti(O,P).

%%predikat
predikat(PD, pre(KK))		:- katakerja(PD,KK).
predikat(PD, pre(KK,PE))	:- katakerja(V,KK), preposisi(PE,PEP), append(V,PE,PD).
predikat(PD, pre(PEP,KK))	:- preposisi(PE,PEP),katakerja(V,KK), append(PE,V,PD).
predikat(PD, pre(PRF,KK))	:- prefiks(PR,PRF), katakerja(V,KK),append(PR,V,PD).
%%predikat(PD, pre(KS))		:- katasifat(PD,KS).

%%frasa	
frasekatakerja(VP,fkk(KK,OB)):- katakerja(V,KK),obyek(O,OB),append(V,O,VP).
%%frasekatagabungan(VG,fkt(FKK,KET)):-frasekatakerja(VP,FKK),keterangan(KR,KET),append(VP,KR,VG).
%%frasekatakerja(VP,fkk(PRE,KET))	:- predikat(PD,PRE),keterangan(KR,KET),append(PD,KR,VP).
frasekatabenda(VB,fkb(SUB,KS))	:- subject(SU,SUB),katasifat(S,KS),append(SU,S,VB).
frasekatabenda(VB,fkb(OB,KS))	:- obyek(O,OB),katasifat(S,KS),append(O,KS,VB).

%%sentence(SEN, kalimat(SUB, FKT)):- subject(SU,SUB), frasekatagabungan(VG, FKT), append(SU,VG,SEN).
sentence(SEN, kalimat(SUB, FKK)):- subject(SU,SUB), frasekatakerja(VP, FKK), append(SU,VP,SEN).
sentence(SEN, kalimat(SUB, PRE)):- subject(SU,SUB),predikat(PD,PRE),append(SU,PD,SEN).
sentence(SEN, kalimat(SUB, KET)):- subject(SU,SUB),keterangan(KR,KET),append(SU,KR,SEN).
sentence(SEN, kalimat(FKB,PRE))	:- frasekatabenda(VB,FKB),predikat(PD,PRE),append(VB,PD,SEN).
%%sentence(SEN, kalimat(PRE, KET)):- predikat(PD,PRE),keterangan(KR,KET),append(PD,KR,SEN).


%%sentence(SEN, kalimat(FKB,FKK))	:- frasekatabenda(VB,FKB),frasekatakerja(VP,FKK),append(VB,VP,SEN).
