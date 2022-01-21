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
    