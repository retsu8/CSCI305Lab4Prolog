% CSCI 305, Lab 4
% William Paddock

% The following is a weighted graph with 9 nodes
% Each edge is given as (i,j,weight), with weight > 0.

edge(1,2,1.6).
edge(1,3,1.5).
edge(1,4,2.2).
edge(1,6,5.2).
edge(2,3,1.4).
edge(2,5,2.1).
edge(2,9,5.1).
edge(3,4,1.4).
edge(3,5,1.3).
edge(4,5,1.3).
edge(4,7,1.2).
edge(4,8,3.0).
edge(5,6,1.6).
edge(5,7,1.7).
edge(6,7,1.8).
edge(6,8,2.2).
edge(6,9,1.7).
edge(7,8,1.6).
edge(8,9,1.8).

path(To, To, [To]).
path(This, To, [This|Rest]) :-
    edge(This, Next, Weight),
    path(Next, To, Rest).
path(From, To, Path) :-
        path_1(From, To, [], Path).
