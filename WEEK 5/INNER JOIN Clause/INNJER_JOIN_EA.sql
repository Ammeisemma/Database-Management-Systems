-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.

-- Result for information request 1.
-- Get productCode and productName. Get the textDescription of product lines. 
SELECT 
    productCode, 
    productName, 
    textDescription
FROM
    products t1
INNER JOIN productlines t2 
    ON t1.productline = t2.productline;

-- Result for information request 2. 
--
SELECT 
    productCode, 
    productName, 
    textDescription
FROM
    products
INNER JOIN productlines USING (productline);

-- Result for information request 3.
-- Display order number, order status, and total sales.
SELECT 
    t1.orderNumber,
    t1.status,
    SUM(quantityOrdered * priceEach) total
FROM
    orders t1
INNER JOIN orderdetails t2 
    ON t1.orderNumber = t2.orderNumber
GROUP BY orderNumber;



-- Result for information request 4.
-- Display order number, order status, and total sales.
SELECT 
    orderNumber,
    status,
    SUM(quantityOrdered * priceEach) total
FROM
    orders
INNER JOIN orderdetails USING (orderNumber)
GROUP BY orderNumber;

-- Result for information request 6.

SELECT 
    orderNumber,
    orderDate,
    orderLineNumber,
    productName,
    quantityOrdered,
    priceEach
FROM
    orders
INNER JOIN
    orderdetails USING (orderNumber)
INNER JOIN
    products USING (productCode)
ORDER BY 
    orderNumber, 
    orderLineNumber;


-- Result for information request 7.
-- See INNER JOIN orders, orderdetails, customers and products tables
SELECT 
    orderNumber,
    orderDate,
    customerName,
    orderLineNumber,
    productName,
    quantityOrdered,
    priceEach
FROM
    orders
INNER JOIN orderdetails 
    USING (orderNumber)
INNER JOIN products 
    USING (productCode)
INNER JOIN customers 
    USING (customerNumber)
ORDER BY 
    orderNumber, 
    orderLineNumber;