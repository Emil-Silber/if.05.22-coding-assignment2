% Emil Silber
% 27/02/2024
% 3CHIF
% Description: This is a simple family tree in Prolog. 

% ------------------------

% Task 1

% parent(Parent, Child) 
parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).

% ------------------------ 

% Task 2

% male(Person)
male(adam).
male(john).
male(pat).
male(jacob).

% female(Person)
female(eve).
female(lisa).
female(anne).
female(carol).

% father(Father, Child) :- parent(Father, Child), male(Father)
father(X, Y) :- parent(X, Y), male(X).

% mother(Mother, Child) :- parent(Mother, Child), female(Mother)
mother(X, Y) :- parent(X, Y), female(X).

% ------------------------

% Task 3

% grandparent(GrandParent, GrandChild) :- parent(GrandParent, Parent), parent(Parent, GrandChild)
grandparent(GP, GC) :- parent(GP, P), parent(P, GC).

% Task 4

% grandfather(GrandParent) :- grandparent(GrandParent, GrantChild), male(GrandParent)
grandfather(GP, GC) :- grandparent(GP, GC), male(GP).

% grandmother(GrandParent) :- grandparent(GrandParent, GrantChild), female(GrandParent)
grandMother(GP, GC) :- grandparent(GP, GC), female(GP).