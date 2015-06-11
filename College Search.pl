	students([st01,st02,st03,st04,st05,st06]).
	colleges([co0101,co0102,co0201,co0202,co0203,co0001]).

	student_name(Name, ID) :-
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
	
	choice(Stu,Spot,Num) :-
		member(Stu/Spot/Num,
		[
		st01/co0201/1,
		st01/co0202/2,
		st01/co0203/3,
		st01/co0101/4,
		st01/co0102/5,
		st01/co0001/6,
		st01/co0002/7,
		st01/co0003/8,
		st01/co0004/9,
		st01/co0005/10,
		st01/co0006/11,
		st02/co0101/1,
		st02/co0102/2,
		st02/co0201/3,
		st02/co0202/4,
		st02/co0203/5,
		st02/co0001/6,
		st02/co0002/7,
		st02/co0003/8,
		st02/co0004/9,
		st02/co0005/10,
		st02/co0006/11,
		st03/co0201/1,
		st03/co0202/2,
		st03/co0203/3,
		st03/co0101/4,
		st03/co0102/5,
		st03/co0001/6,
		st03/co0002/7,
		st03/co0003/8,
		st03/co0004/9,
		st03/co0005/10,
		st03/co0006/11,
		st04/co0101/1,
		st04/co0102/2,
		st04/co0201/3,
		st04/co0202/4,
		st04/co0203/5,
		st04/co0001/6,
		st04/co0002/7,
		st04/co0003/8,
		st04/co0004/9,
		st04/co0005/10,
		st04/co0006/11,
		st05/co0201/1,
		st05/co0202/2,
		st05/co0203/3,
		st05/co0101/4,
		st05/co0102/5,
		st05/co0001/6,
		st05/co0002/7,
		st05/co0003/8,
		st05/co0004/9,
		st05/co0005/10,
		st05/co0006/11,
		st06/co0201/1,
		st06/co0202/2,
		st06/co0203/3,
		st06/co0101/4,
		st06/co0102/5,
		st06/co0001/6,
		st06/co0002/7,
		st06/co0003/8,
		st06/co0004/9,
		st06/co0005/10,
		st06/co0006/11,
		co0101/st03/01,
		co0101/st04/02,
		co0101/st01/03,
		co0101/st02/04,
		co0101/st06/05,
		co0101/st05/06,
		co0102/st03/01,
		co0102/st04/02,
		co0102/st01/03,
		co0102/st02/04,
		co0102/st06/05,
		co0102/st05/06,
		co0201/st03/01,
		co0201/st04/02,
		co0201/st01/03,
		co0201/st02/04,
		co0201/st06/05,
		co0201/st05/06,
		co0202/st03/01,
		co0202/st04/02,
		co0202/st01/03,
		co0202/st02/04,
		co0202/st06/05,
		co0202/st05/06,
		co0203/st03/01,
		co0203/st04/02,
		co0203/st01/03,
		co0203/st02/04,
		co0203/st06/05,
		co0203/st05/06,
		co0001/st03/01,
		co0001/st04/02,
		co0001/st01/03,
		co0001/st02/04,
		co0001/st06/05,
		co0001/st05/06,
		co0002/st03/01,
		co0002/st04/02,
		co0002/st01/03,
		co0002/st02/04,
		co0002/st06/05,
		co0002/st05/06,
		co0003/st03/01,
		co0003/st04/02,
		co0003/st01/03,
		co0003/st02/04,
		co0003/st06/05,
		co0003/st05/06,
		co0004/st03/01,
		co0004/st04/02,
		co0004/st01/03,
		co0004/st02/04,
		co0004/st06/05,
		co0004/st05/06,
		co0005/st03/01,
		co0005/st04/02,
		co0005/st01/03,
		co0005/st02/04,
		co0005/st06/05,
		co0005/st05/06,
		co0006/st03/01,
		co0006/st04/02,
		co0006/st01/03,
		co0006/st02/04,
		co0006/st06/05,
		co0006/st05/06
		]
	).

	college_name(Name, ID) :-
		member(Name/ID,
		[
		'No College'/co0001,
		'No College'/co0002,
		'No College'/co0003,
		'No College'/co0004,
		'No College'/co0005,
		'No College'/co0006,
		'Pacific Union College'/co0101,
		'Pacific Union College'/co0102,
		'Fresno Pacific Union'/co0201,
		'Fresno Pacific Union'/co0202,
		'Fresno Pacific Union'/co0203
		]
	).
	
	min_gpa(ID, GPA) :-
		member(ID/GPA,
		[
		co01/3.0,
		co02/3.2
		]
	).
	
% LOGIC

	prefers(X,Y,Z) :-
		choice(X,Y,N1),
		choice(X,Z,N2),
		N1 < N2.

	unstable_pair(pairing(M1,W1), pairing(M2,W2)) :-
		prefers(M1,W2,W1),
		prefers(W2,M1,M2).
	unstable_pair(pairing(M1,W1), pairing(M2,W2)) :-
		prefers(W1,M2,M1),
		prefers(M2,W1,W2).
		
	unstable(S) :-
		member(pairing(M1,W1), S),
		member(pairing(M2,W2), S),
		M1 \== M2,
		unstable_pair(pairing(M1,W1),pairing(M2,W2)).
			
	is_eligible(Student, College) :-
		gpa(Student, GPA),
		min_gpa(College, Min),
		GPA >= Min.
	
	pair([],[], []).  
	pair([M|Ms],[W|Ws], [pairing(M,W)|MWs]) :-
		pair(Ms,Ws,MWs).

	not(P) :-
		\+ P.

	solution(S) :-
		students(M),
		colleges(W),
		permutation(W,W1),
		pair(M,W1,S),
		not(unstable(S)).

	permutation([],[]).
	permutation([X|Xs],Ys) :-
		permutation(Xs,Zs),
		insert(X,Zs,Ys).
		
	insert(X,Xs,[X|Xs]).
	insert(X,[Y|Ys],[Y|Zs]) :-
		insert(X,Ys,Zs).
		
	
	can_enter(Student, College) :-
		is_eligible(Student, College), 
		findall(X, has_preference(X, Student), List),
		length(List, Length),
		space(College, Space),
		Length < Space.