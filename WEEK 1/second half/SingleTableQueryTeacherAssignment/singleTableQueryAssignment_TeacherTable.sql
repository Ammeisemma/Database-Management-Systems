-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 19, 2021.
-- Last Edited August 30, 2021.
-- Single Table Query, "Teacher" Assignment


-- Result for Information Request 1
-- SELECT Teachers who do not have Tenure
SELECT 
TID, Phone, FName, LName
FROM Teacher
WHERE Tenure = FALSE;

-- Result for Information Request 2
-- SELECT Teachers that teach Science and Math classes
SELECT 
ClassName, FName, LName
FROM Teacher
WHERE ClassSubject = "Science" or ClassSubject = "Math";

-- Result for Information Request 3
-- SELECT Teachers that teach History and Make over 55,000

SELECT 
TID, FName, LName
FROM Teacher
WHERE ClassSubject = "History" and YearlySalary > 55000;

-- Result for Information Request 4
-- SELECT Teachers that have atleast 30 students

SELECT 
LName, ClassName, ClassSubject
FROM Teacher
WHERE TotalStudents >= 30;

-- Result for Information Request 5
-- SELECT Teachers that first name is jerry

SELECT 
FName, LName
FROM Teacher
WHERE FName = "Jerry";

-- Result for Information Request 6.
-- SELECT all data from Teacher Table. 
Select * 
FROM Teacher;
