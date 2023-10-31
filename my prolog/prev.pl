parent(john,alan).
parent(john,bob).
parent(mary,alan).
parent(mary,bob).

parent(sala,mick).
parent(sala,alina).
parent(alan,mick).
parent(alan,alina).

parent(bob,sara).
parent(bob,suzan).
parent(jpanne,sara).
parent(jpanne,suzan).


male(john).
male(alan).
male(jpanne).
male(mick).
male(suzan).

female(mary).
female(sala).
female(alina).
female(bob).
female(sara).



grandmother(X) :-
    parent(X,Y),
    parent(Y,Z),
    female(X),
    X\=Y,
    X\=Z,
    Y\=Z.


sister(X) :-
    parent(Z,X),
    parent(Z,Y),
    female(X),
    male(Z),
    Z\=Y,
    X\=Y,
    X\=Z.


predecessor(X) :-
    parent(Y,X),
    parent(Z,Y),
    X\=Y,
    X\=Z,
    Y\=Z.
