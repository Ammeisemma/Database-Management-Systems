-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.
-- LEFT JOIN PRACTICE.

-- Result for information request 1.
-- This query uses the LEFT JOIN clause to find all customers and their orders
SELECT 
    customers.customerNumber, 
    customerName, 
    orderNumber, 
    status
FROM
    customers
LEFT JOIN orders ON 
    orders.customerNumber = customers.customerNumber;

-- Result for information request 2.
-- Same with using table aliases.
SELECT
    c.customerNumber,
    customerName,
    orderNumber,
    status
FROM
    customers c
LEFT JOIN orders o 
    ON c.customerNumber = o.customerNumber;

-- Result for information request 3.
-- 
SELECT
	customerNumber,
	customerName,
	orderNumber,
	status
FROM
	customers
LEFT JOIN orders USING (customerNumber);

-- Result for information request 4.
-- LEFT JOIN clause to find unmatched rows
SELECT 
    c.customerNumber, 
    c.customerName, 
    o.orderNumber, 
    o.status
FROM
    customers c
LEFT JOIN orders o 
    ON c.customerNumber = o.customerNumber
WHERE
    orderNumber IS NULL;

-- Result for information request 5.
--  LEFT JOIN to join three tables
SELECT 
    lastName, 
    firstName, 
    customerName, 
    checkNumber, 
    amount
FROM
    employees
LEFT JOIN customers ON 
    employeeNumber = salesRepEmployeeNumber
LEFT JOIN payments ON 
    payments.customerNumber = customers.customerNumber
ORDER BY 
    customerName, 
    checkNumber;

