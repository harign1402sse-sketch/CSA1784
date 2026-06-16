% Graph representation: edge(Node1, Node2, HeuristicValue)

edge(a, b, 4).
edge(a, c, 2).
edge(b, d, 5).
edge(b, e, 12).
edge(c, f, 3).
edge(c, g, 7).
edge(f, goal, 1).
edge(g, goal, 2).

% Best First Search
bestfs(Goal, Goal, _) :-
    write('Goal Reached: '), write(Goal), nl.

bestfs(Current, Goal, Visited) :-
    findall((H, Next),
            (edge(Current, Next, H),
             \+ member(Next, Visited)),
            Neighbors),
    sort(Neighbors, Sorted),
    Sorted = [(_, BestNode)|_],
    write('Visiting: '), write(BestNode), nl,
    bestfs(BestNode, Goal, [BestNode|Visited]).