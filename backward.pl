% Facts
has_fever.
has_cough.
has_headache.

% Rule
disease(flu) :-
    has_fever,
    has_cough,
    has_headache.

% Goal Query Rule
diagnose :-
    disease(flu),
    write('Patient is suffering from Flu.'), nl.