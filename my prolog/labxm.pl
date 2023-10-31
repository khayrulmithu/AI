parent(ann, chad).
parent(bob, chad).
parent(ann, ella).
parent(bob, ella).

parent(diane, gary).
parent(diane, howard).
parent(chad, gary).
parent(chad, howard).

parent(ella, isaiah).
parent(ella, jane).
parent(frank, isaiah).
parent(frank, jane).

parent(isaiah, kelly).
parent(jane, kelly).


male(bob).
male(chad).
male(howard).
male(frank).
male(jane).

female(ann).
female(dane).
female(gary).
female(ella).
female(isaiah).
female(kelly).



father(X, Y) :-
    parent(X, Y),
    male(X).

mather(X, Y) :-
    parent(X,Y),
    female(X).


husband(X,Y) :-
    parent(X,Z),
    parent(Y,Z),
    male(X),
    female(Y).

brother(X,Y) :-
    parent(Z,X),
    parent(Z,Y),
    male(X),
    male(Z),
    X\=Y.

sister(X,Y) :-
    parent(Z,X),
    parent(Z,Y),
    female(X),
    male(Z),
    X\=Y.

grandmother(X) :-
    parent(Z,Y),
    parent(X,Z),
    female(X),
    female(Y),
    female(Z),
    X\=Y.


greatgrandmother(A) :-
    parent(A,Y),
    parent(Y,Z),
    parent(Z,X),
    female(A),
    female(Y),
    female(Z),
    X\=Y.
