-----Practice Project-------
----Section 2(1.15)---------
CREATE DATABASE SchoolManagementDB1
USE SchoolManagementDB1 

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY IDENTITY(1,1),
    ClassName NVARCHAR(50)
);

insert into Classes Values('Class-10')
insert into Classes Values('Class-9')
insert into Classes Values('Class-8')
insert into Classes Values('Class-7')
-------------------------------------------------------

CREATE TABLE Student (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    ClassID INT, -- Foreign key to Classes table
    CONSTRAINT FK_Student_Class FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);
insert into Student values('John','Doe','2000-01-15',1)
insert into Student values('Mike','Smith','2001-02-16',2)
insert into Student values('Rahul','Kashyap','2002-03-17',3)
insert into Student values('Jonny','Vats','2003-04-18',4)
-------------------------------------------------------------
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY IDENTITY(1,1),
    SubjectName NVARCHAR(100)
);
insert into Subjects values('Mathematics')
insert into Subjects values('Science')
insert into Subjects values('History')
insert into Subjects values('Computer')
---------------------------------------------------------
CREATE INDEX IX_Student_StudentID ON Student (StudentID);
-------------------------------------------------------
select * from Classes
select * from Student
select * from Subjects

