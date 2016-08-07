-- Sharon Morris 
-- Week 4 Assignment
-- 1) Create the table. Each row should minimally include the person’s name, the person’s supervisor, and the
-- person’s job title. Using ID columns is encouraged.

DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees
(
	Emp_ID int PRIMARY KEY,
	Emp_Name varchar(50) NOT NULL,
	Title varchar(50) NOT NULL,
	Supervisor int
);

-- 2) Populate the table with a few sample rows

INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (1,'Steve Jobs','CEO',Null);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (2,'Jeffrey Williams','SVP, Operations',1);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (3,'Eddy Cue','VP, Internet Services',1);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (4,'William Frederick','VP, Fulfilment',2);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (5,'Rita Lane','VP, Operations',2);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (6,'Max Paley','Manager, Audio / Video',3);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (7,'Jeff Robbin','Manager, Consumer Apps',3);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (8,'Timothy Cook','Chief Operating Officer',1);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (9,'Carol Hess','Personal Assistant',2);
INSERT INTO Employees (Emp_ID, Emp_Name, Title, Supervisor) VALUES (10,'Sharon Morris', 'Personal Assistant',1);

SELECT *
FROM Employees;

Select a.Emp_ID as "Employee ID", a.Emp_Name as "Name", a.Title as "Position", b.Emp_Name as "Manager's Name" 
from Employees a 
Left join Employees b on a.Supervisor = b.Emp_ID
order by a.Supervisor;
