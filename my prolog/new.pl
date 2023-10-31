gf(shanta,sumon).
gf(meher,sifat).
gf(meher,sourav).
gf(tushi,sifat).

female(meher).
female(tushi).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).


female(pam).
female(liz).
female(ann).
female(pat).

male(sifat).
male(sourav).

mother(X, Y) :-
  parent(X, Y),
  female(X).


sister(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  female(X),
  X \== Y.


two_ch(X) :-
    parent(X,Y),
    parent(X,Z),
    female(Y),
    Y\==Z.



devil(X,Y) :-  gf(A,X), gf(A,Y), female(A), X\==Y.

enemy() :-  gf(A,X), gf(A,Y); A.



can(rakib).
can(hasan).
can(riyad).

ssc(4.5,rakib).
hsc(4,rakib).
hons(3.3,rakib).

ssc(4,hasan).
hsc(3.5,hasan).
hons(3.7,hasan).

ssc(4.75,riyad).
hsc(3,riyad).
hons(3.2,riyad).

s_can(X) :- ssc(A,X),hsc(B,X),hons(C,X), A>=3.5, B>=3.4,C>3.2.

ssc_can(X) :-  ssc(A,X), A>=4.

ssc_hsc(X) :- (ssc(A,X)), 4>=A, A>=3.5.

min(X,A, B) :- ssc(A,X), B>=A, B=A.

val(v=0).

max(A,B,C=0) :- A>=B, C=B.
