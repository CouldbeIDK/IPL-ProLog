% STUDENTS

% student(first, last, id, gpa, preferred college ID)

	student(sally, jenkins, st01, 3.25, co01).

	student(jacob, salem, st02, 2.9, co01).

	student(aaron, bond, st03, 4.0, co02).
	
	student(anon, man, st04, 3.1, co01).
	
	student(that, chick, st05, 1.0, co02).
	
	student(some, dude, st06, 1.5, co01).
	
% COLLEGES 

% college(name, ID, MinGPA, is accepting students)

	college(pacific_union_college, co01, 3.0, true).
	
	college(fresno_pacific_union, co02, 3.2, false).
	
% LOGIC

	is_preferred(Student, College) :-
		student(_, _, Student, _, Pref),
		Pref == College.
		
	is_eligible(Student, College) :-
		student(_,_,Student,Gpa,_),
		college(_,College, Min, true),
		Gpa >= Min.
		
	is_entered(Student, College) :-
		is_preferred(Student, College),
		is_eligible(Student, College).
		
	roster(College) :-
		findall(Student, (is_entered(Student, College)), X),
		write(X).