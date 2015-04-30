% STUDENTS

% student(first, last, id, gpa, preferred college ID)

	student(sally, jenkins, st01, 3.25, co01).

	student(jacob, salem, st02, 2.9, co01).

	student(aaron, bond, st03, 4.0, co02).
	
% COLLEGES 

% college(name, ID, MinGPA, is accepting students)

	college(pacific_union_college, co01, 3.0, true).
	
	college(fresno_pacific_union, co02, 3.2, false).
	
% LOGIC

	is_preferred(Student, College) :-
		student(_, _, Student, _, Pref),
		Pref == College.
		
	is_eligible(Student, College) :-
		college(_,College,_,true).