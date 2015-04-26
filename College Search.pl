% STUDENTS

% student(first, last, id, gpa, preferred college ID)

	student(sally, jenkins, st01, 3.25, co01).

	student(jacob, salem, st02, 2.9, co01).

	student(aaron, bond, st03, 4.0, co02).
	
% COLLEGES 

% college(name, ID, MinGPA, roster)

	college(pacific_union_college, co01, 3.0, ro01).
	
	college(fresno_pacific_union, co02, 3.2, ro02).
	
% ROSTER

	b_setval(ro01, []).
	b_setval(ro02, []).
	
% LOGIC

	is_preferred(Student, College) :-
		student(_, _, Student, _, Pref),
		Pref == College.
		
	is_eligible(Student, College) :-
		student(_, _,Student, Gpa, _),
		college(_, College, Min, _),
		Gpa >= Min.
	
	