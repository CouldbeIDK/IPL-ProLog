% STUDENTS

	student(Name, ID) :-
		member(Name/ID,
		[
		'Sally Jenkins'/st01,
		'James Saylor'/st02, 
		'Aaron Bond'/st03, 
		'Anon Man'/st04, 
		'That Chick'/st05, 
		'Some Dude'/st06
		]
	).

	gpa(ID, GPA) :-
		member(ID/GPA,
		[
		st01/3.25,
		st02/3.0,
		st03/4.0,
		st04/3.3,
		st05/1.0,
		st06/3.0
		]
	).
	
	preferred_location(ID, Loc) :-
		member(ID/Loc,
		[
		st01/co02,
		st02/co01,
		st03/co02,
		st04/co01,
		st05/co02,
		st06/co02
		]
	).

% COLLEGES 

	college(Name, ID) :-
		member(Name/ID,
		[
		'Pacific Union College'/co01,
		'Fresno Pacific Union'/co02
		]
	).
	
	min_gpa(ID, GPA) :-
		member(ID/GPA,
		[
		co01/3.0,
		co02/3.2
		]
	).
	
	space(ID, Space) :-
		member(ID/Space,
		[
		co01/1,
		co02/3
		]
	).
% LOGIC

	better_grades(Student1, Student2) :-
		gpa(Student1, GPA1),
		gpa(Student2, GPA2),
		GPA1 > GPA2.
		
	has_preference(Student1, Student2) :-
		 better_grades(Student1, Student2),
		 preferred_location(Student1, X),
		 preferred_location(Student2, Y),
		 X=Y.
		
	is_eligible(Student, College) :-
		gpa(Student, GPA),
		min_gpa(College, Min),
		GPA >= Min.
		
	can_enter(Student, College) :-
		is_eligible(Student, College), 
		findall(X, has_preference(X, Student), List),
		length(List, Length),
		space(College, Space),
		Length < Space.
	