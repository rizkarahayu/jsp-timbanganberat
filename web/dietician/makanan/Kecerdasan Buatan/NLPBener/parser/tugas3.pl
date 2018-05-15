%% deklarasi beberapa kata:

katabenda([S], subjek(S)) :-member(S, [aku,kamu,dia,bapak,ibu]).
		  
kataobjek([O], objek(O)) :-member(O, [ayam,hp,laptop,tahu]).

kataseru([R], seru(R)) :-member(R, [ayo,jangan]).

katatanya([T], tanya(T)) :-member(T, [apa,mengapa,bagaimana,mengapa,siapa]).
		  		  
katasifat([A], adjektifa(A)):-member(A,[cantik,jelek,banyak,besar,kecil,benar,cepat]).

katakerja([P], predikat(P)) :-member(P, [makan,main,minum]).

katanegasi([KN], negasi(KN)) :-member(KN, [tidak, bukan]).
		
katapreposisi([PR], preposisi(PR)) :-member(PR, [dan,dari,di,kepada,karena,oleh]).

katakonjung([KK], konjung(KK)):-member(KK, [meskipun, walaupun, tetapi, bahkan, setelah, sebelum, sesudah]).

frasaspo(SPO, spo(SUBJEK, PO)) :-
	katabenda(S, SUBJEK),
	frasapo(POO, PO),
	append(S,POO,SPO).

frasasp(SP, sp(SUBJEK, PREDIKAT)) :-
	katabenda(S, SUBJEK),
	katakerja(P, PREDIKAT),
	append(S,P,SP).
	
frasapo(PO, po(PREDIKAT, OBJEK)) :-
	katakerja(P, PREDIKAT),
	kataobjek(O, OBJEK),
	append(P,O,PO).

frasasifat(SFT, sft(SUBJEK, ADJEKTIFA)) :-
	katabenda(S, SUBJEK),
	katasifat(A, ADJEKTIFA),
	append(S,A,SFT).

frasaseru(SRU, sru(SERU,PREDIKAT)) :-
	kataseru(R, SERU),
	katakerja(P, PREDIKAT),
	append(R,P,SRU).

frasaanak(FA, fa(KONJUNG, PREDIKAT)):-
	katakonjung(KK, KONJUNG),
	katakerja(P, PREDIKAT),
	append(KK, P, FA).

frasaanak(FA, fa(KONJUNG,SKN)):-
	katakonjung(KK,KONJUNG),
	frasanegasi(FN, SKN),
	append(KK, FN, FA).

frasaanak(FA, fa(KONJUNG, SPO)):-
	katakonjung(KK,KONJUNG),
	frasaspo(FS, SPO),
	append(KK, FS, FA).

%%sentence(ST, kalimat(SP, FA)):-frasasp(FSP, SP),frasaanak(FSAK, FA),append(FSP, FSAK, ST).

sentence(ST, kalimat(SERU, PREDIKAT)) :-
	kataseru(R, SERU),
	katakerja(P, PREDIKAT),
	append(R,P,ST).

sentence(ST, kalimat(SUBJEK, PREDIKAT)) :-
	katabenda(S, SUBJEK),
	katakerja(P, PREDIKAT),
	append(S,P,ST).

sentence(ST, kalimat(TANYA, SP)) :-
	katatanya(T, TANYA),
	frasasp(SSPP, SP),
	append(T,SSPP,ST).

sentence(ST, kalimat(SUBJEK, PO)) :-
	katabenda(S, SUBJEK),
	frasapo(POOO, PO),
	append(S,POOO, ST).

sentence(ST, kalimat(SERU, PO)) :-
	kataseru(R, SERU),
	frasapo(POOO, PO),
	append(R,POOO,ST).

sentence(ST, kalimat(SUBJEK, ADJEKTIFA)) :-
	katabenda(S, SUBJEK),
	katasifat(A, ADJEKTIFA),
	append(S,A,ST).

sentence(ST, kalimat(SUBJEK, PREDIKAT)) :-
	katabenda(S, SUBJEK),
	katakerja(P, PREDIKAT),
	append(S,P,ST).
	
sentence(ST, kalimat(PREDIKAT, OBJEK)) :-
	katakerja(P, PREDIKAT),
	kataobjek(O, OBJEK),
	append(P,O,ST).
	
sentence(ST, kalimat(TANYA, PO)) :-
	katatanya(T, TANYA),
	frasapo(SSPP, PO),
	append(T,SSPP,ST).

sentence(ST, kalimat(TANYA, SPO)) :-
	katatanya(T, TANYA),
	frasaspo(SPP, SPO),
	append(T,SPP,ST).