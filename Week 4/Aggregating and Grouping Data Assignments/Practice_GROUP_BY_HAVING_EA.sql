-- Created by: Emmanuel Almonte.
-- Course: CIS 205.
-- Professor: Craig Nelson.
-- Last modified 08/09/21.

-- Example of GROUP BY with multiple Aggregation functions.

SELECT 
ordernumber,
SUM(quantityOrdered) AS itemsCount,
SUM(priceeach*quantityOrdered) AS total
FROM
orderdetails
GROUP BY ordernumber;

-- Example of HAVING Clause with an Aggregation Functions.

SELECT 
ordernumber,
SUM(quantityOrdered) AS itemsCount,
SUM(priceeach*quantityOrdered) AS total
FROM
orderdetails
GROUP BY 
ordernumber
HAVING 
total > 1000;

-- Example of HAVING Clause with an AND Operator.

SELECT 
ordernumber,
SUM(quantityOrdered) AS itemsCount,
SUM(priceeach*quantityOrdered) AS total
FROM
orderdetails
GROUP BY ordernumber
HAVING 
total > 1000 AND 
itemsCount > 600;


-- Example of HAVING Clause in a Join Operation.

SELECT 
a.ordernumber, 
status, 
SUM(priceeach*quantityOrdered) total
FROM
orderdetails a
INNER JOIN orders b 
ON b.ordernumber = a.ordernumber
GROUP BY  
ordernumber, 
status
HAVING 
status = 'Shipped' AND 
total > 1500;



