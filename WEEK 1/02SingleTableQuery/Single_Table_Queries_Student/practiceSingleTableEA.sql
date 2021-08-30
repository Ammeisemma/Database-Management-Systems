-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.
-- Last Edited August 14, 2021.
-- Practice Single Table Queries.


-- Result Set for Information Request 1
-- Request ID, Name, Number 
-- for students that live in Newark DE.
SELECT 
snum, firstname, lastname, Phone
FROM 
Student
WHERE city = "Newark" AND st ="DE";

-- Result Set for Information Request 2
-- Request ID, Name, Number for students 
-- with grade point averages greater than 3.0.
SELECT 
snum, firstname, lastname, Phone
FROM 
Student
WHERE Gpa > 3.0;

-- Result Set for Information Request 3 
-- Request ID, Name, Number 
-- for students that live in NY and PA.
SELECT
snum, firstname, lastname, Phone
FROM 
Student
WHERE city = "New York" or city = "Phila";

-- Result Set for Information Request 4 
-- Request Name, Address, City, State and Zip Code 
-- for students that are Female and major is CIS.
SELECT
firstname, lastname, street, city, st, Zip
FROM 
Student
WHERE gender = "F" AND Major = "CIS";

-- Result Set for Information Request 5
-- Request ID, Student Name, Phone Number 
-- for students in zip code 19130 that are on Scholarship.
SELECT
snum, firstname, lastname, Phone
FROM 
Student
WHERE Zip = "19130" AND scholarship = TRUE;
