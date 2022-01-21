-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.
-- Last Edited August 14, 2021.
-- Examples of SELECT statements.


-- Result set for information request 1.
-- Example of SELECT statement. 
-- Request the last names of all employees.

SELECT 
    lastName
FROM 
    employees;

-- Result set for information request 2.
-- Example of SELECT statement. 
-- Request last and first name of employees along with their jobtitle.

SELECT 
    lastname, firstname, jobtitle
FROM 
    employees;

-- Result set for information request 3. 
-- Request data from all columns from the employees table.  
SELECT 
    * 
FROM 
    employees;


-- Result set for information request 4. 
-- Example of SELECT statement with WHERE clause.
-- Request lastname, firstname, and jobtitle WHERE jobtitle is sales rep.

SELECT
    lastname, firstname, jobtitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';


-- Result set for information request 5. 
-- Example of SELECT statement with WHERE clause as well as AND operator.
-- Request lastname, firstname, jobtitle, and officeCode, WHERE jobtitle is sales rep and  officeCode is 1.

SELECT
lastname, firstname, jobtitle, officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' AND officeCode = 1;

-- Result set for information request 6. 
-- Example of SELECT statement with WHERE clause and NULL operator.
-- Request lastname, firstname, and reporstTo WHERE reportsTo IS NULL.

SELECT
    lastName, firstName, reportsTo
FROM
    employees
WHERE
    reportsTo IS NULL;


-- Result set for information request 7. 
-- Example of SELECT statement with WHERE clause with comparison operator.
-- Request lastname, firstname, and jobtitle WHERE jobtitle is not equal to "Sales Rep".

SELECT
    lastname, firstname, jobtitle
FROM
    employees
WHERE
    jobtitle <> 'Sales Rep';

-- Result set for information request 8. 
-- Example of SELECT statement with WHERE clause with greater than comparison operator.
-- Request lastname, firstname, and offiecode WHERE officecode is greater than 5.

SELECT
    lastname, firstname, officeCode
FROM
    employees
WHERE
    officeCode > 5;

-- Result set for information request 9. 
-- Example of SELECT statement with WHERE clause with less than comparison operator.
-- Request lastname, firstname, and offiecode WHERE officecode is less than or equal 4.

SELECT
    lastname, firstname, officeCode
FROM
    employees
WHERE
    officeCode <= 4;