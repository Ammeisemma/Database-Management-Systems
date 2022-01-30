-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.

-- Result for information request 1.
-- find Mary’s email.
SELECT 
    firstname, 
    lastname, 
    email
FROM
    employees
WHERE
    employeeNumber = 1056;

-- update the email address of Mary to the new email.

UPDATE employees 
SET 
    email = 'mary.patterson@classicmodelcars.com'
WHERE
    employeeNumber = 1056;

-- Result for information request 2. 
-- Confirm Mary’s email update.
SELECT 
    firstname, 
    lastname, 
    email
FROM
    employees
WHERE
    employeeNumber = 1056;

-- Update both last name and email.
UPDATE employees 
SET 
    lastname = 'Hill',
    email = 'mary.hill@classicmodelcars.com'
WHERE
    employeeNumber = 1056;

-- Result for information request 3.
-- Confirm Mary’s email update
SELECT 
    firstname, 
    lastname, 
    email
FROM
    employees
WHERE
    employeeNumber = 1056;