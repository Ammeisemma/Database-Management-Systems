-- Created By: Emmanuel Almonte
-- Course CIS 205
-- Instructor Craig Nelson
-- last modified 0/12/2021

-- Example of a Between Clause

SELECT 
productCode, 
productName, 
buyPrice
FROM
products
WHERE
buyPrice BETWEEN 90 AND 100;

-- Example of the same selection using an AND Operator
SELECT 
productCode, 
productName, 
buyPrice
FROM
products
WHERE
buyPrice >= 90 AND buyPrice <= 100;

-- Example of NOT BETWEEN Operator.

SELECT 
productCode, 
productName, 
buyPrice
FROM
products
WHERE
buyPrice NOT BETWEEN 20 AND 100;

-- Example of the same selection but with OR operator.

SELECT 
productCode, 
productName, 
buyPrice
FROM
products
WHERE
buyPrice < 20 OR buyPrice > 100;

-- Example of range of dates with BETWEEN.

SELECT 
orderNumber,
requiredDate,
status
FROM 
orders
WHERE 
requireddate BETWEEN 
CAST('2003-01-01' AS DATE) AND 
CAST('2003-01-31' AS DATE); 

-- Example of IN operator.

SELECT 
officeCode, 
city, 
phone, 
country
FROM
offices
WHERE
country IN ('USA' , 'France');

-- Example of same selection with OR operator.

SELECT 
officeCode, 
city, 
phone
FROM
offices
WHERE
country = 'USA' OR country = 'France';

-- Example of NOT IN clause.
SELECT 
officeCode, 
city, 
phone, 
country
FROM
offices
WHERE
country NOT IN ('USA' , 'France');

-- Example of IN with more than two values. 

SELECT
orderNumber,
customerNumber,
status,
shippedDate
FROM
orders
WHERE
orderNumber IN (10165, 10287, 10310);