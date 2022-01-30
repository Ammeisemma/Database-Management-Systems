-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: August 16, 2021.
-- MULTI TABLE Queries


-- Result for information request 1.
-- List the employees and the customers that they are connected to.
SELECT CONCAT(employees.lastName,' ',employees.firstName)"Employee",customers.customerName "Customer" 
FROM customers INNER JOIN employees 
ON customers.salesRepEmployeeNumber=employees.employeeNumber;


-- Result for information request 2.
-- List the employees that report to another employee. List the Employees full
-- name, employee number. The name of the employee that they report to
-- and their employee number
SELECT concat(ee.lastName,' ',ee.firstName) AS "Employee",concat(ss.lastName,' ',ss.firstName) AS "Report to" 
FROM employees ee,employees ss 
WHERE ee.employeeNumber=ss.reportsTo;


-- Result for information request 3.
-- List the Customers and the Payments that they have made. List the
-- Customer number, Customer Full Name, Payment Amounts, Check
-- Numbers, Dates
SELECT customers.customerNumber,concat(customers.contactLastName,' ',contactFirstName) AS "Customer",payments.amount,payments.checkNumber,payments.paymentDate
FROM customers INNER JOIN payments 
ON customers.customerNumber=payments.customerNumber;


-- Result for information request 4.
-- List the customers that have not made payments
SELECT concat(customers.contactLastName,' ',contactFirstName) AS "Customer Name"
FROM customers 
WHERE customerNumber NOT IN(SELECT customerNumber FROM payments);


-- Result for information request 5.
-- List the Order Details for a arrange of customers. Include the customer
-- name, order number, product code, product name, product description.
-- Organize the out by invoice number.
SELECT concat(customers.contactLastName,' ',contactFirstName)AS "Customer",orders.orderNumber, productName, productDescription,textDescription 
FROM orders 
INNER JOIN orderdetails on orders.orderNumber=orderdetails.orderNumber
INNER JOIN products ON products.ProductCode = orderdetails.ProductCode 
INNER JOIN productlines on productlines.ProductLine = products.ProductLine 
INNER JOIN customers ON customers.customerNumber = orders.customerNumber;

-- Result for information request 6.
-- List the Names of employees associated with a specific product
SELECT DISTINCT concat(employees.lastName,' ',employees.firstName)AS "Employee", products.ProductName 
FROM orders 
INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber 
INNER JOIN products ON products.ProductCode = orderdetails.ProductCode 
INNER JOIN productlines ON productlines.ProductLine = products.ProductLine
INNER JOIN customers ON customers.customerNumber = orders.customerNumber 
INNER JOIN employees ON customers.salesRepEmployeeNumber = employees.employeeNumber;
