-- File 1
-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.
-- Last Edited August 14, 2021.
-- Examples of SELECT statement using AND operator. 


-- Result set for information request 1.
-- Example of SELECT statement with AND operator.
-- Request for customers who are Located in "USA" and "CA".
SELECT 
    customername, country, state
FROM
    customers
WHERE
    country = 'USA' AND state = 'CA';

-- Result set for information request 2.
-- Example of SELECT statement with AND operator.
-- Request for customers who are Located in "USA" and "CA",
-- and creditlimit is greater than 100000.
SELECT
    customername, country, state, creditlimit
FROM
    customers
WHERE 
    country = 'USA' AND state = 'CA' AND creditlimit > 100000;


-- File 2
-- Created By: Emmanuel Almonte.  
-- Course and Instructor: CIS 205, Craig Nelson.  
-- Created On: July 16, 2021.  
-- Last Edited August 14, 2021.
-- Examples of SELECT statements with OR and AND operator.


-- Result for information request 1.
-- Example of SELECT statement with OR operator.
-- Request customername, country, WHERE country is USA OR France.

SELECT
    customername, country
FROM
    customers
WHERE 
    country = 'USA' OR country = 'France';  

-- Result for information request 2.
-- Example of SELECT statement with OR and AND operator.
-- Request customername, country, WHERE country is USA OR France AND creditlimit is greater than 100000;

SELECT 
    customername, country, creditLimit
FROM
    customers
WHERE
    (country = 'USA' OR country = 'France')
    AND creditlimit > 100000;


-- Result for information request 3.
-- Example of SELECT statement with OR and AND operator.
-- Request customername, country, WHERE country is USA OR France AND creditlimit is greater than 10000;

SELECT
    customername, country, creditLimit
FROM
    customers
WHERE 
    country = 'USA' OR country = 'France'
    AND creditlimit > 10000;


-- File 3
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


    