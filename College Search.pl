% STUDENTS

% student(first, last, id, gpa, preferred college ID)

% Sally Jenkins ID #01

	student(sally, jenkins, st01, 3.25, co01).

% Jacob Salem ID #02

	student(jacob, salem, st02, 2.9, co01).
	
% Aaron Bond ID #03

	student(aaron, bond, st03, 4.0, co02).
	
% COLLEGES 

% college(name, ID, MinGPA)

% Pacific Union College ID #01

	college(pacific_union_college, co01, 3.0).
	
% Fresno Pacific Union ID #02
	
	college(fresno_pacific_union, co02, 3.2).
	
% LOGIC

	is_preferred(Student, College) :-
		student(X, Y, Student, Z, Pref),
		Pref == College.
		
	is_eligible(Student, College) :-
		student(X,Y,Student, Gpa, Z),
		college(A, College, Min),
		Gpa >= Min.
	