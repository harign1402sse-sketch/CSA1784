% planet(Name, Distance_from_Sun_million_km, Type)

planet(mercury, 58, terrestrial).
planet(venus, 108, terrestrial).
planet(earth, 150, terrestrial).
planet(mars, 228, terrestrial).
planet(jupiter, 778, gas_giant).
planet(saturn, 1430, gas_giant).
planet(uranus, 2870, ice_giant).
planet(neptune, 4500, ice_giant).

% Rule to find the type of a planet
planet_type(Planet, Type) :-
    planet(Planet, _, Type).

% Rule to find distance from the Sun
distance_from_sun(Planet, Distance) :-
    planet(Planet, Distance, _).

% Rule to find planets of a given type
same_type(Planet1, Planet2) :-
    planet(Planet1, _, Type),
    planet(Planet2, _, Type),
    Planet1 \= Planet2.