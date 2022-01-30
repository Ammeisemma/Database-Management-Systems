-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: August 16, 2021.
-- SELECT Alias Table Name



-- Query without a meaningful column header.
SELECT 
    CONCAT_WS(', ', lastName, firstname)
FROM
    employees;


-- With a meaningful column header.
SELECT
   CONCAT_WS(', ', lastName, firstname) AS `Full name`
FROM
   employees;

--  We can use an Alias name in our query.
SELECT
	CONCAT_WS(', ', lastName, firstname) `Full name`
FROM
	employees
ORDER BY
	`Full name`;

-- Multiple word alias require quotes.

SELECT
	orderNumber `Order no.`,
	SUM(priceEach * quantityOrdered) total
FROM
	orderdetails
GROUP BY
	`Order no.`
HAVING
	total > 60000;


-- We can have Table name Aliases. 
SELECT
	customerName,
	COUNT(o.orderNumber) total
FROM
	customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY
	customerName
ORDER BY
	total DESC;

-- Queries without Alias are lengthy and have less clarity.
SELECT
	customers.customerName,
	COUNT(orders.orderNumber) total
FROM
	customers
INNER JOIN orders ON customers.customerNumber = orders.customerNumber
GROUP BY
	customerName
ORDER BY
	total DESC;
