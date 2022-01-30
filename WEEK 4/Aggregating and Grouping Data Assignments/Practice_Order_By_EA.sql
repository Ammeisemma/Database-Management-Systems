-- Created by: Emmanuel Almonte.
-- Course: CIS 205.
-- Professor: Craig Nelson.
-- Last modified 08/09/21


-- Example of ORDER BY clause using one column.

SELECT
contactLastname,
contactFirstname

FROM
customers

ORDER BY
contactLastname;

-- Example of ORDER BY clause using one column but in descending order.

SELECT
contactLastname,
contactFirstname

FROM
customers

ORDER BY
contactLastname DESC;

-- Example of ORDER BY clause using two column one column in descending order and the other in ascending.

SELECT 
contactLastname, 
contactFirstname

FROM
customers

ORDER BY 
contactLastname DESC , 
contactFirstname ASC;

-- Example of ORDER BY clause to sort result set by an expression.

SELECT 
orderNumber, 
orderlinenumber, 
quantityOrdered * priceEach

FROM
orderdetails

ORDER BY 
quantityOrdered * priceEach DESC;

-- Example of ORDER BY clause to sort the result set by an expression.

SELECT 
orderNumber,
orderLineNumber,
quantityOrdered * priceEach AS subtotal

FROM
orderdetails

ORDER BY subtotal DESC;
