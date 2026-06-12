% Initial State
initial_state(state(at_door, on_floor, at_window, has_not_eaten)).

% Goal State
final_state(state(_, _, _, has_eaten)).

% Actions
action(
    state(at_window, on_floor, at_window, has_not_eaten),
    grasp,
    state(at_window, on_floor, at_window, has_eaten)
).

action(
    state(at_door, on_floor, _, HB),
    walk_to_window,
    state(at_window, on_floor, at_window, HB)
).