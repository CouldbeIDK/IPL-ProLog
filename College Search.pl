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
		st01/city
		st02/isolated
		st03/city
		st04/isolated
		st05/city
		st06/city
		]
	).
	
	% 1 = small, 2 = medium, 3 = large number of students
	preferred_size(ID,Size) :-
		member(ID/Size,
		[
		st01/3
		st02/2
		st03/1
		st04/2
		st05/3
		st06/3
		]
	).

% COLLEGES 

	college(Name, ID) :-
		member(ID/Rate,
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
	
	college_ranking(ID, Rank) :-
		member(ID/GPA,
		[
		co01/7.5,
		co02/7
		]
	).
	
	college_size(ID, Size) :-
		member(ID/Size,
		[
		co01/2,
		co02,3
		]
	).
	
% LOGIC
				
	preferred_score(Student, College, Wieght) :-
		%weight determined by meeting the characteristics.
		
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