-- Created By: Emmanuel Almonte. 
-- Course: CIS 205.
-- Instructor Craig Nelson.

-- Result for information request 1.
--Select the maximum price of any orders in the items_ordered table. 

SELECT MAX(Price) FROM Orders;

-- Result for information request 2.
-- Select the average price of all of the orders that were purchased in the month of Dec.


-- Result for information request 3.
-- Return the total number of rows in the orders table?

SELECT COUNT(*) as Total_Rows FROM Orders;

-- Result for information request 4.
-- For all of the tents that were ordered in the orders table, what is the price of the lowest tent? 

SELECT MIN(Price) FROM Orders WHERE item = 'Tent' ;

-- Group By Exercises

-- Result for information request 5.
--  How many people are in each unique state on the customer table? Select the state and display the number of people in each state.

SELECT state, COUNT(state) FROM Customer GROUP BY state;

-- Result for information request 6.
-- From the Orders table, select the item, maximum price, and minimum price for each specific item in the table.
SELECT item, MAX(price),MIN(price) FROM Orders
GROUP BY item;

-- Result for information request 7.
-- How many orders did each customer make? Use the items_ordered table. Select the customer identification, the number of orders they made, and the sum of their orders.

SELECT custID, COUNT(*) as count, SUM(price) as Total FROM Orders
GROUP BY CustID;

-- Result for information request 8.
-- How many people are in each unique state in the customer table that has more than one person in the state? Select the state and display the number of how many people are in each if it's greater than 1.
SELECT state,count(*) as Customer 
FROM Customer
Group By state
having count(*)>1;

-- Result for information request 9.
-- From the order table, select the item, maximum price, and minimum price for each specific item in the table. 
-- Only display the results if the maximum price for one of the items is greater than 190.00.

SELECT item, MAX(price),MIN(price)
FROM Orders
GROUP BY item
having max(price)>190;

-- Result for information request 10.
-- How many orders did each customer make? Use the orders table. Select the customer identification number, 
-- the number of orders they made, and the sum of their orders if they purchased more than 1 item.

SELECT custID,Count(*),sum(price) FROM Orders
Group by custID
having count(*)>1;

-- Result for information request 11.
-- Select the last name, first name, and city for all customers in the customer table. 
-- Display the results in Ascending Order based on the last name.

SELECT lname,fname,city From Customer
ORDER by lname;

-- Result for information request 12.
-- Same thing as exercise #1, but display the results in descending order.

SELECT lname,fname,city From Customer
ORDER by lname desc;

-- Result for information request 13.
-- Select the item and price for all of the items in the items_ordered table that the price is greater than 10.00.
-- Display the results in Ascending order based on the price.
SELECT item, price FROM Orders WHERE price >10
ORDER by price; 

-- Result for information request 14.
-- Select the date, item, and price from the orders table for all of the rows that have a price value ranging from 10.00 to 80.00.
SELECT Date_ordered, item, price FROM Orders
WHERE price BETWEEN 10 and 80;

-- Result for information request 15.
-- Select the first name, city, and state from the customer table for all of the rows where the state value is either:
-- Arizona, Washington, Oklahoma, Colorado, or Hawaii.

SELECT fname,city,state FROM Customer
WHERE state IN ('Arizona', 'Washington', 'Oklahoma', 'Colorado','Hawaii');
