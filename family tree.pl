% Facts
male(john).
male(david).
male(mike).

female(mary).
female(linda).
female(susan).

% Parent Relationships
parent(john, david).
parent(mary, david).

parent(john, linda).
parent(mary, linda).

parent(david, mike).
parent(susan, mike).

% Rules
father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

brother(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    male(X),
    X \= Y.

sister(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    female(X),
    X \= Y.