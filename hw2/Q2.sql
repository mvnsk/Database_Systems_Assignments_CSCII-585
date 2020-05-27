/* ORACLE LIVE SQL*/

Create table enrollment  
(SID INTEGER NOT NULL,  
ClassName VARCHAR2(20) NOT NULL,  
Grade VARCHAR2(1) NOT NULL,  
PRIMARY KEY (SID,ClassName));

Insert into enrollment Values (123,'Processing', 'A');
Insert into enrollment Values (123,'Python','B');
Insert into enrollment Values (123,'Scratch', 'B');
Insert into enrollment Values (662,'Java', 'B');
Insert into enrollment Values (662,'Python','A');
Insert into enrollment Values (662 , 'JavaScript','A');
Insert into enrollment Values (662, 'Scratch', 'B');
Insert into enrollment Values (345, 'Scratch', 'A');
Insert into enrollment Values (345 ,'JavaScript', 'B');
Insert into enrollment Values (345 ,'Python', 'A');
Insert into enrollment Values (555, 'Python', 'B');
Insert into enrollment Values (555,'JavaScript', 'B');

/*------ACTUAL QUERY -----------*/

SELECT ClassName, COUNT(*) AS Total 
FROM enrollment 
GROUP BY ClassName order by Count(*) desc
;