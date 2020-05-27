/* ORACLE LIVE SQL*/

Create table junkmail  
(Name VARCHAR2(10) NOT NULL,  
Address VARCHAR2(10) NOT NULL,  
ID  INTEGER NOT NULL,  
SameFam INTEGER, 
PRIMARY KEY (ID));


Insert into junkmail Values('Alice',   'A',      10,  NULL);
Insert into junkmail Values('Bob',     'B',      15, NULL);
Insert into junkmail Values('Carmen',  'C',      22,  NULL);
Insert into junkmail Values('Diego',   'A',     9,   10);
Insert into junkmail Values('Ella',    'B',      3,   15);
Insert into junkmail Values('Farkhad', 'D',      11,  NULL);

/* DISPLAY BEFORE */
select * from junkmail;

/*------ACTUAL QUERY -----------*/

delete from junkmail 
where samefam is null  
and id = ANY (select samefam from junkmail);

/* DISPLAY AFTER */
select * from junkmail;