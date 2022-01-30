-- Created by: Emmanuel Almonte.
-- Course: CIS 205.
-- Professor: Craig Nelson.
-- Last modified 08/09/21.



-- Example of GROUP BY.
SELECT 
status
FROM
orders
GROUP BY status;

-- Example of GROUP BY with COUNT() Function.

SELECT 
status, COUNT(*)
FROM
orders
GROUP BY status;

-- Example of GROUP BY with SUM() Function and also using JOIN based on status.

SELECT 
status, 
SUM(quantityOrdered * priceEach) AS amount
FROM
orders
INNER JOIN orderdetails 
USING (orderNumber)
GROUP BY 
status;


-- Example of GROUP BY based on order number.

SELECT 
orderNumber,
SUM(quantityOrdered * priceEach) AS total
FROM
orderdetails
GROUP BY 
orderNumber;


-- Example of GROUP BY based on year.

SELECT 
YEAR(orderDate) AS year,
SUM(quantityOrdered * priceEach) AS total
FROM
orders
INNER JOIN orderdetails 
USING (orderNumber)
WHERE
status = 'Shipped'
GROUP BY 
YEAR(orderDate);

