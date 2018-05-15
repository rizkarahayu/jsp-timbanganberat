%%deklarasi
katabenda([N], kb(N))			:- member(N,[kerupuk, air]).
kataganti([P], kp(P))			:- member(P,[aku, kamu, engkau]).
katakerja([V], kk(V))			:- member(V,[makan, lihat,minum]).
katasifat([S], ks(S))			:- member(S,[manis, hitam, hijau]).
tempat([T], kt(T))				:- member(T,[kampus, warung, sekolah]).
waktu([W],kw(W))				:- member(W,[pagi, kemarin, malamhari]).
sufiks([F], suf(F))				:- member(F,[an,i,kan,ku,mu,nya,kah,lah,tah]).
prefiks([PR], prf(PR))			:- member(PR,[me, di, mem, ke]).
konjungsi([K], k(K))			:- member(K,[dan, karena, saat]).
preposisi([PE], pep(PE))		:- member(PE,[pada, dengan, di]).
kataseru([SE], se(SE))			:- member(SE,[asyik, aduhai, amboi, wah, wow, aduh, masa]).
katatanya([TA], kt(TA))			:- member(TA,[apa, kapan, kenapa, mengapa, bagaimana, siapa, dimana]).
numeralia([NU], num(NU))		:- member(NU,[satu, dua, tiga, empat, seratus, seribu]).
tandabaca([TD], tn(TD))			:- member(TD, [. , !, ?]).

%%subject
subject(SU, sbj(KB))		:- katabenda(SU,KB).
subject(SU, sbj(P))		:- kataganti(SU,P).

%%obyek
obyek(O, ob(KB))			:- katabenda(O,KB).
obyek(O, ob(KP))			:- kataganti(O,KP).

%%keterangan
%%keterangan(KET, ket(KT))	:- tempat(KET, KT).
%%keterangan(KET, ket(KW))	:- waktu(KET, KW).
keterangan(KET, ket(PRE, TMP))	:- preposisi(PE, PRE), tempat(T, TMP), append(PE, T, KET).
keterangan(KET, ket(PRE, WKT))	:- preposisi(PE, PRE), waktu(W, WKT), append(PE, W, KET).
keterangan1(KET1, ket(PRE, WKT))	:- preposisi(PE, PRE), waktu(W, WKT), append(PE, W, KET1).

%%predikat
predikat(PD, pre(KK,PE))	:- katakerja(V,KK), preposisi(PE,PEP), append(V,PE,PD).
predikat(PD, pre(PEP,KK))	:- preposisi(PE,PEP),katakerja(V,KK), append(PE,V,PD).
predikat(PD, pre(PRF,KK))	:- prefiks(PR,PRF), katakerja(V,KK),append(PR,V,PD).
predikat(PD, pre(KS))		:- katasifat(PD,KS).

%%frasakatakerja
frasekatakerja(VP, fkk(KK))					:- katakerja(VP, KK).
frasekatakerja(VP,fkk(KK,OB))				:- katakerja(V,KK), obyek(O,OB),append(V,O,VP).
frasekatakerja(VP, fkk(KK))					:- katakerja(VP, KK).
frasanomina(VN, fnm(KB,KS))					:- katabenda(N,KB), katasifat(S,KS), append(N,S,VN).

%%frasaketerangan
frasaketerangan(FKT, kt(PRE, TMP))			:- preposisi(PE, PRE), tempat(T, TMP), append(PE, T, FKT).
frasaketerangan(FKT, kt(PRE, WKT))			:- preposisi(PE, PRE), waktu(W, WKT), append(PE, W, FKT).
frasaketerangan(FKT, fkt(VKT, WKT))			:- keterangan(KET, VKT), waktu(W, WKT), append(KET, W, FKT).

rumusspo(SPO, spo(PRON, FKK))					:- kataganti(P, PRON), frasekatakerja(VP, FKK), append(P, VP, SPO).
rumusspokonj(SPOKONJ, spokonj(KONJ, VSPO))	:- konjungsi(K, KONJ), rumusspo(SPO, VSPO), append(K, SPO, SPOKONJ).	
rumusspk(SPK, spk(KP, VKT))						:- kataganti(P, KP),  keterangan(KET, VKT), append(P, KP, KET).

%%kalimattanya
%%sentence(SEN, kalimat(VKSE,VSPO))				:- kataseru(SE,VKSE), rumusspo(SPO,VSPO), append(SE,SPO,SEN).
sentence(SEN, kalimat(VKTA,VSPO))				:- katatanya(TA,VKTA), rumusspo(SPO,VSPO), append(TA,SPO,SEN).
%%kalimatseru
sentence(SEN, kalimat(SPO))					:- rumusspo(SEN, SPO).