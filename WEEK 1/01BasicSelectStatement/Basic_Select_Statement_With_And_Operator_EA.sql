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