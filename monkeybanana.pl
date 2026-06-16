% Initial Facts
monkey(at_door).
box(at_window).
banana(at_center).

% Rule: Monkey moves to the box
move_to_box :-
    write('Monkey moves to the box.'), nl.

% Rule: Monkey pushes the box under the banana
push_box :-
    write('Monkey pushes the box under the banana.'), nl.

% Rule: Monkey climbs the box
climb_box :-
    write('Monkey climbs onto the box.'), nl.

% Rule: Monkey grabs the banana
grab_banana :-
    write('Monkey grabs the banana.'), nl.

% Goal
get_banana :-
    move_to_box,
    push_box,
    climb_box,
    grab_banana,
    write('Monkey has obtained the banana!'), nl.