DROP DATABASE Teacher;
CREATE DATABASE Teacher;
USE Teacher;

CREATE TABLE Teacher
(
    TID              CHAR (8),
    FName            VARCHAR (50),
    LName            VARCHAR (50),
    Phone            CHAR (12),
	  ClassSubject     VARCHAR (50),
    ClassName        VARCHAR (50),
    TotalStudents    NUMERIC,
    YearlySalary     NUMERIC,
    Tenure           BOOLEAN,

   CONSTRAINT Teacher PRIMARY KEY (TID)
);



INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1000", "Jerry", "Austin", "526-842-2013", "History", "American History", 27, 57325, True);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1001", "Mark", "Alfredo", "898-903-3068", "Math", "Algebra", 32, 49123, False);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1002", "Mary", "Anderson", "377-971-8161", "Math", "Pre-Calculus", 25, 61380, True);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1003", "Millie", "Ankrum", "726-740-7049", "English", "Public Speaking", 36, 50822, False);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1004", "Norm", "Miller", "937-480-6435", "English", "Creative Writing", 30, 59135, True);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1005", "Heather", "Kochan", "710-769-3386", "History", "World History", 28, 53132, False);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1006", "Jerry", "Corot", "770-321-3316", "English", "Creative Writing", 24, 46448, False);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1007", "Mark", "Nelson", "215-867-5309", "Science", "Biology", 33, 57434, True);

INSERT INTO Teacher (TID, FName, LName, Phone, ClassSubject, ClassName,  TotalStudents, YearlySalary, Tenure)
VALUES ("T1008", "Linda", "Hyland", "215-834-1234", "Science", "Chemistry", 32, 54410, False);
