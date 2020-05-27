/* ORACLE LIVE SQL*/

Create table candidates 
(Instructor VARCHAR2(20) NOT NULL,  
Subject VARCHAR2(20) NOT NULL,  
PRIMARY KEY (Instructor, Subject));

Insert into candidates Values('Aleph','Scratch');
Insert into candidates Values('Aleph','Java');
Insert into candidates Values('Aleph','Processing');
Insert into candidates Values('Bit', 'Python');
Insert into candidates Values('Bit', 'JavaScript');
Insert into candidates Values('Bit', 'Java');
Insert into candidates Values('CRC', 'Python');
Insert into candidates Values('CRC', 'JavaScript');
Insert into candidates Values('Dat', 'Scratch');
Insert into candidates Values('Dat', 'Python');
Insert into candidates Values('Dat', 'JavaScript');
Insert into candidates Values('Emscr','Scratch');
Insert into candidates Values('Emscr','Processing');
Insert into candidates Values('Emscr','JavaScript');
Insert into candidates Values('Emscr', 'Python');

/*------ACTUAL QUERY -----------*/

SELECT instructor FROM candidates
WHERE subject IN ('JavaScript','Scratch','Python')
GROUP BY instructor
HAVING COUNT(*) = 3;

/* Explanation for the Query:

We're selecting instructor from candidates table (as per the specification) 
where subjects belongs to one of the 3 subjects i.e if the instructor teaches any of the 3 mentioned 
Group by is the most important clause of this query. It is used because we want to consider each instructor as a group and see
if they teach all the 3 subjects ( having condition). The 3 subject part in enforced by having clause

for each instructor, all the subjects corresponding to each instructor(i.e all the candidate.subject for each candidate.instructor) 
is checked if it  belongs to one of the specified 3 and 
each time the where condition is satisfied, the count is incremented by one for that specific instructor. If the count is equal to 3 
for that instructor, it is displayed in the output.
 
*/

