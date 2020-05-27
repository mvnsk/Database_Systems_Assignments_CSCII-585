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

select distinct instructor from candidates c1 where  
3 = ( 
select count(*)  from candidates c2 where c1.instructor=c2.instructor and c2.subject in ('JavaScript','Scratch','Python'));

/* 
This is a correlated subquery approach. The keyword distinct is used because instructors name shouldn't be repeated, which would be, in the absence of "distinct"
keyword. For each outer query, the inner query references outer query instructor name and checks against inner query instructor name and 
also if the inner query subject (C2.subject) belongs to one of the 3 subjects mentioned. If the inner query returns 3, the corresponding instructor name from outer
query is displayed on the output. 
*/