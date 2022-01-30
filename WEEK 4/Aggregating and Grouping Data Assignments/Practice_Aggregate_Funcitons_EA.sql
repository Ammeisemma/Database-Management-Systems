-- Created by: Emmanuel Almonte.
-- Course: CIS 205.
-- Professor: Craig Nelson.
-- Last modified 08/09/21.


-- Example of AVG function.
-- Calculates the buy price for all products in the products table. 
SELECT 
AVG(buyPrice) average_buy_price
FROM 
products;

-- Example of the COUNT() Function.
-- Count total number of value in a set using COUNT() Function.

SELECT 
COUNT(*) AS total
FROM 
products;

-- Example of the MAX().
-- Get the highest buy price by using MAX() Function.

SELECT 
MAX(buyPrice) highest_price
FROM
products;


-- Example of the MIN().
-- Get the lowest buy price by using MIN() Function.

SELECT 
MIN(buyPrice) lowest_price
FROM 
products;


-- Example of SUM().
-- Get the total of buy price.
SELECT SUM(buyPrice) total
FROM products;
