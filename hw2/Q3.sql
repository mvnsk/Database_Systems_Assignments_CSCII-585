/* ORACLE LIVE SQL*/

Create table enrollment 
(PID VARCHAR2(4) NOT NULL, 
Step INTEGER NOT NULL, 
Status VARCHAR2(1) NOT NULL, 
PRIMARY KEY (PID,step));

Insert into enrollment Values('P100',0,'C');
Insert into enrollment Values('P100',1,'W');
Insert into enrollment Values('P100',2,'W');
Insert into enrollment Values('P201',0,'C');
Insert into enrollment Values('P201',1,'C');
Insert into enrollment Values('P333',0,'W');
Insert into enrollment Values('P333',1,'W');
Insert into enrollment Values('P333',2,'W');
Insert into enrollment Values('P333',3,'W');

/*------ACTUAL QUERY -----------*/

select PID from enrollment e1 where step=0 AND status='C' 
AND 'W'= ALL (select status from enrollment e2 where step <> 0 and e1.PID=e2.PID);