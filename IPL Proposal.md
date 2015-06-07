


## Proposal

####Overview/Abstract
I will be making a program that will match hypothetical undergraduate students with colleges. The matching will be based on the student's preferences, the college's maximum student capacity, and the college's minimum requirement for registration.

####BackGround
This is my first time coding in ProLog, or any Logic based language, so I haves pent time looking at working code. I am also taking a Logic and Sets class, so this project will fit nicely with that class.

####Significance
Finding the right college can be very difficult for a new high-school graduate, or any person for that matter, and I'm hoping that as I'm coding this tool, I might just learn more about logic, and coding in general.

####Deliverables


 - Skeleton (D: 7.5 hours): Matching students to colleges, if the college is preferred, and is accepting students. have a function that returns the full roster for a college with the given students.
 - Basic (C: 15 hours) : Adding in college minimum requirements. (Such as SAT scores, GPA's, etc.)
 - Solid (B: 22.5 hours) : Having the colleges prioritize the higher ranking students, picking the "best of the bunch" rather than the first in the list. Add a function that returns where a student should go based on the previous criteria.
 - Awesome (A: 30 hours) : Replace the student ranking of colleges with a list of preferred characteristics that a college should have. 

#### Tools
SWI ProLog

####Possible Problems:
A major problem, is that I'm going to have to wrap my head around the recursive nature of this problem. If I want to see if a student can goto a college, I have to see if there is any other students who would go to that college and can goto that college, and to see that, I would have to do the same thing with the other student. A bit mind bending.

####References
I will primarily using wikipedia, and the SWI ProLog documentation, which can be found below.

[Prolog Documentation](http://www.swi-prolog.org/download/stable)