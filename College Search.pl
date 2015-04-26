% STUDENTS

% student(first, last, id, gpa, preferred college ID)

% Sally Jenkins ID #01

	student(sally, jenkins, st01, 3.25, co01).

% Jacob Salem ID #02

	student(jacob, salem, st02, 2.9, co01).
	
% Aaron Bond ID #03

	student(aaron, bond, st03, 4.0, co02).
	
% COLLEGES 

% 

% Pacific Union College ID #01

	college(pacific_union_college, co01).
	
% Fresno Pacific Union ID #02
	
	college(fresno_pacific_union, co02).
	
% LOGIC

	eligible(Student, College) :-
		student(X, Y, Student, Gpa, Pref),
		Pref == College.