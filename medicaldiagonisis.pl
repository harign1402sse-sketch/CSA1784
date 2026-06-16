% Symptoms for diseases

disease(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(headache).

disease(cold) :-
    symptom(cough),
    symptom(sneezing).

disease(malaria) :-
    symptom(fever),
    symptom(chills),
    symptom(sweating).

disease(covid19) :-
    symptom(fever),
    symptom(cough),
    symptom(loss_of_taste).

% Diagnosis Rule
diagnose(Disease) :-
    disease(Disease).