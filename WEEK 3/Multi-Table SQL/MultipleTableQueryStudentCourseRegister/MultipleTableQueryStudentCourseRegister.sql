-- Created By: Emmanuel Almonte.
-- Summer 2021 for course CIS 250
-- August 2, 2021


-- Show Tables.

show tables;

-- Describe tables.
Describe student;

Describe course;

Describe registration;


-- Result for information request 1.
--Find the full names of the students who have taken a CIS course or a History course


SELECT fname, lname  as FullName
FROM student st 
JOIN registration re 
ON st.sid = re.sid
JOIN course co on co.crn = re.crn
WHERE co.dept = 'CIS' OR co.dept= 'HIS'
group by st.sid;

-- Result for information request 2.
--List the full names and GPA of the students who have taken a course.

Select fname, lname as FullName, gpa
from student st 
join registration re 
ON st.sid = re.sid
join course co 
ON co.crn = re.crn
WHERE st.sid=re.sid 
group by st.sid;

-- Result for information request 3.
--List the full names and GPA of the students who have not taken a course

SELECT st.fname, st.gpa
FROM student st
WHERE st.sid NOT IN ( SELECT registration.sid FROM student,registration WHERE student.sid=registration.sid);



-- Result for information request 4.
--List the full names and GPA of the students who have taken a course a 3 credit course
Select fname, lname as FullName
from student st 
join registration re 
ON st.sid = re.sid
join course co
ON co.crn = re.crn
WHERE co.credits = 3
group by st.sid;

