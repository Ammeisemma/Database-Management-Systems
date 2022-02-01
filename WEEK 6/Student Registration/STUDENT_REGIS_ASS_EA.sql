-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.



-- Find the full names of the students who have taken a CIS course or a History course.
-- Result for information request 1.
SELECT fname, lname 
FROM student
INNER JOIN registration
ON student.sid = registration.sid
INNER JOIN course
ON registration.crn = course.crn
WHERE course.dept = "CIS" OR course.dept = "History"
GROUP BY fname
;

-- Find the full names of the students who have taken both a CIS course and a History course
-- Result for information request 2.

SELECT student.fname, student.lname
FROM student 
INNER JOIN course
WHERE course.cname = "CIS" AND course.cname = "History";

-- Find the full names of the students who have taken a CIS course but have not taken a History course
-- Result for information request 3. 

SELECT DISTINCT student.fname, student.lname
FROM student 
INNER JOIN course
WHERE  NOT (course.cname = "CIS" OR course.cname = "History");