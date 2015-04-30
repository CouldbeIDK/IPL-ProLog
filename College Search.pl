% STUDENTS

% student(first, last, id, gpa, preferred college ID)

	student('Sally Jenkins', st01, 3.25, co01).

	student('James Saylor', st02, 2.9, co01).

	student('Aaron Bond', st03, 4.0, co02).
	
	student('Anon Man', st04, 3.1, co01).
	
	student('That Chick', st05, 1.0, co02).
	
	student('Some Dude', st06, 1.5, co01).
	
% COLLEGES 

% college(name, ID, MinGPA, is accepting students)

	college('Pacific Union College', co01, 3.0, true).
	
	college('Fresno Pacific Union', co02, 3.2, false).
	
% LOGIC

	is_preferred(Student, College) :-
		student(_, Student, _, Pref),
		Pref == College.
		
	is_eligible(Student, College) :-
		student(_,Student,Gpa,_),
		college(_,College, Min, true),
		Gpa >= Min.
		
	is_entered(Student, College) :-
		is_preferred(Student, College),
		is_eligible(Student, College).
		
	roster(College) :-
		findall(Student, (is_entered(Student, College)), X),
		write(X).