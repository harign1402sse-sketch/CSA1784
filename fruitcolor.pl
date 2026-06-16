% Facts: fruit(Name, Color)

fruit(apple, red).
fruit(banana, yellow).
fruit(grape, green).
fruit(orange, orange).
fruit(mango, yellow).
fruit(strawberry, red).

% Rule to find the color of a fruit
color_of(Fruit, Color) :-
    fruit(Fruit, Color).

% Rule to find fruits of a given color
fruit_of_color(Color, Fruit) :-
    fruit(Fruit, Color).