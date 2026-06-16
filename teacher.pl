% Facts: student(Student, Teacher, Subject, Code)

student(ravi, kumar, ai, cs301).
student(priya, lakshmi, dbms, cs302).
student(arun, kumar, ai, cs301).
student(meena, rajan, os, cs303).
student(karthik, lakshmi, dbms, cs302).

% Rule to find teacher of a student
teacher_of(Student, Teacher) :-
    student(Student, Teacher, _, _).

% Rule to find subject of a student
subject_of(Student, Subject) :-
    student(Student, _, Subject, _).

% Rule to find code of a subject
code_of(Subject, Code) :-
    student(_, _, Subject, Code).

% Rule to find students taught by a teacher
student_of_teacher(Teacher, Student) :-
    student(Student, Teacher, _, _).