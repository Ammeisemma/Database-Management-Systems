-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.
-- Last Edited August 14, 2021.
-- Assignment Single Table Query.



-- Result Set for Information Request 1
-- Find the House ID, street address, and value for houses in the 19140 zip code under $240,000.

SELECT 
    ID, street, value
FROM 
    House
WHERE
    zip = 19140 AND VALUE < 240000;

-- Result Set for Information Request 2
-- Find the House ID, street address, and value for houses in the 19128 zip code with at least three bedrooms and two bathrooms.
SELECT 
ID, street, value, bedrooms, bathrooms
FROM House
WHERE zip = 19128 AND bedrooms >= 3 AND bathrooms >= 2;

-- Result Set for Information Request 3
-- Find the House ID, street address, zip code and value for houses sold by Mark Jones.
SELECT 
ID, street,zip, value
FROM House
WHERE first = "Mark" AND last = "Jones";

-- Result Set for Information Request 4
-- Find the street address, value, number of bedrooms and number of bathrooms 
-- for house in the 19116 and 19154 zip codes.
SELECT 
street, value, bedrooms, bathrooms 
FROM House
WHERE zip = "19116" OR zip = "19154";

-- Result Set for Information Request 5
-- Find the House ID, street address and value 
-- for houses in the 19139 zip code that have not been sold.
SELECT 
ID, street, value
FROM House
WHERE zip = "19139" AND sold = false;

