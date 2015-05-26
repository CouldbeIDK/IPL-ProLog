% STUDENTS

% student(first & last, id, gpa, preferred college location, preferred college rating, preferred college size[1 = small, 2 = average size, 3 =large)

	student('Sally Jenkins', st01, 3.25, city, 7, 3).

	student('James Saylor', st02, 2.9, isolated, 7, 2).

	student('Aaron Bond', st03, 4.0, city, 9, 1).
	
	student('Anon Man', st04, 3.1, isolated,  6, 2).
	
	student('That Chick', st05, 1.0, city, 4, 3).
	
	student('Some Dude', st06, 1.5, city, 5, 3).
	
% COLLEGES 

% college(name, ID, MinGPA, is accepting students, location, ranking, size)

	college('Pacific Union College', co01, 3.0, true, isolated, 7.5, 2).
	
	college('Fresno Pacific Union', co02, 3.2, false, city, 6, 3).
	
% LOGIC

	is_preferred(Student, College) :-
		student(_,Student,_,Ploc, Prat, Psiz),
		college(_,College,_, Loc, Rat, Siz),
		Ploc == Loc,
		Prat <= Rat,
		Siz - Psiz < 1 .
		
	is_eligible(Student, College) :-
		student(_,Student,Gpa,_,_,_),
		college(_,College, Min, true,_,_,_),
		Gpa >= Min.
		
	is_entered(Student, College) :-
		is_preferred(Student, College),
		is_eligible(Student, College).
		
	roster(College) :-
		findall(Student, (is_entered(Student, College)), X),
		write(X).