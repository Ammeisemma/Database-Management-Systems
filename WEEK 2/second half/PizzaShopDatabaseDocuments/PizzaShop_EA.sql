-- Created by: Emmanuel Almonte.
-- For Course CIS 205, Professor: Craig Nelson.
-- Last modified on 08/09/2021.

-- Create and USE the DATABASE
DROP DATABASE IF EXISTS PizzaDelivery_DB;
CREATE DATABASE IF NOT EXISTS PizzaDelivery_DB;
USE PizzaDelivery_DB;

-- Create the Person Table.
-- This is the one side of multiple 1-M Relationships.
-- This is a super Type with Multiple Sub Types.
-- It is in a Overlapping Relationship with 3 Sub Types.

CREATE TABLE IF NOT EXISTS Person
(
    pNum    VARCHAR(10),
    pName    VARCHAR(50) NOT NULL,
    pAddress    VARCHAR(50),
    isCustomer    BOOLEAN,
    isDelivery    BOOLEAN,
    isOrderStaff    BOOLEAN,

    CONSTRAINT Person_PK PRIMARY KEY (pnum)
);

-- There are three discriminator attributes. One for each Sub Type

-- One of the Sub Type Tables

CREATE TABLE IF NOT EXISTS Customer
(
    phone    CHAR(10),
    email    VARCHAR(50),
    pnum_FK    VARCHAR(10),


    CONSTRAINT Customer_PK PRIMARY KEY (email),
    CONSTRAINT Customer_FK1 FOREIGN KEY (pnum_FK)
    REFERENCES Person(pNum)

);

-- One of the Sub Type Tables

CREATE TABLE IF NOT EXISTS Order_Staff
(


    empID    VARCHAR(5),
    pnum_FK VARCHAR(10),


    CONSTRAINT Order_Staff_PK PRIMARY KEY (empID, pnum_FK),
    CONSTRAINT Order_Staff_FK1 FOREIGN KEY (pnum_FK)
    REFERENCES Person(pNum)
);

-- One of the Sub Type Tables

CREATE TABLE IF NOT EXISTS Delivery_Person
(

    model    VARCHAR(20) NOT NULL,
    phone    CHAR(10),
    pnum_FK    VARCHAR(10),

    -- Primary Key is a Composite Key
    -- Including pnum helpd maintain a one to one relationship

    CONSTRAINT Delivery_Person_PK PRIMARY KEY (phone, pnum_FK),
    
    CONSTRAINT Delivery_Person_FK1 FOREIGN KEY (pnum_FK)
    REFERENCES Person(pNum)

);

-- Part of a Ternary Relationship
-- links to Customer, Order Person, Delivery Person
-- This can be considered a Mapping Table
-- Mapping Tables are on the Many Side of 1-M Relationships

CREATE TABLE IF NOT EXISTS Pizza_Order
(
    odate    DATE,
    order_num    VARCHAR(8),
    otype    CHAR(20),
    empid_FK    VARCHAR(5),
    cust_FK    VARCHAR(10),
    deliveryPerson_FK    CHAR(10),

    CONSTRAINT order_PK PRIMARY KEY (order_num),

    CONSTRAINT order_FK1 FOREIGN KEY (empid_FK)
    REFERENCES Order_Staff (empID),

    CONSTRAINT order_FK2 FOREIGN KEY (cust_FK)
    REFERENCES Person(pNum),

    CONSTRAINT order_FK3 FOREIGN KEY (deliveryPerson_FK)
    REFERENCES Delivery_Person(pnum_FK)
);

-- It is on the one side of Multiple 1-M Relationships

CREATE TABLE IF NOT EXISTS Pizza
(
    item_num    CHAR(5),
    size    VARCHAR(2),
    price    DOUBLE,

    CONSTRAINT Pizza_PK PRIMARY KEY (item_num)

);

CREATE TABLE IF NOT EXISTS Order_Item
(
    -- This is an example of an auto generated number
    autogen    int auto_increment,
    order_num_FK    VARCHAR(8),
    item_num_FK     CHAR(8),

    CONSTRAINT order_item_PK PRIMARY KEY(autogen),

    CONSTRAINT order_item_FK1 FOREIGN KEY (order_num_FK)
    REFERENCES Pizza_Order(order_num),

    CONSTRAINT order_item_FK2 FOREIGN KEY(item_num_FK)
    REFERENCES Pizza(item_num)

);


-- These are the INSERT INTO Statments for Person.
-- The collection of instances fall into one of the Sub Types.

INSERT INTO Person(pNum, pName, pAddress, isCustomer, isOrderStaff, isDelivery)
VALUES 
("PID100", "James Kildare", "23 Shrewbury Court",1,0,0),
("PID101", "Ben Casey", "281 S 52nd Street", 1,0,0),
("PID102", "Marcus Welby", "5808 Vine Street", 1,0,0),
("PID103", "Leonard Bones McCoy", "16 S. Bank Street", 1,0,0),
("PID104", "Hawkeye Pierce", "7311 Miller Avenue", 1,0,0),
("PID105", "Phillip Chandler", "206 Locust Street",1,0,0),
("PID106", "Heathcliff Huxtable", "6600 Broad Street", 1,0,0),
("PID107", "Greg House", "1920 Heather Circle", 0,1,0),
("PID108", "Derek Shepherd", "101 Philadelphia Pke", 0,1,0),
("PID109", "Miranda Bailey", "1010 Flourence Circle", 0,1,0),
("PID110", "Barry Sanders",	"100 Erving Lane", 0,0,1),
("PID111", "O.J. Simpson ",	"101 Broad Streat", 0,0,1),
("PID112", "LaDainian Tomlinson", "400 Picatoway Drive", 0,0,1),
("PID113", "Terry Bradshaw", "52 Cheese Head Road", 0,0,1)
;

-- This is the statement will load the Test data for Customer.

INSERT INTO Customer(pnum_FK, email, phone)
VALUES
("PID100", "James@craigle.com", "2155551234"),
("PID101", "Ben@craigle.com", "2155559876"),
("PID102", "Marcus@craigle.com", "2155553456"),
("PID103", "Leonard@craigle.com", "2155558765"),
("PID104", "Hawk@craigle.com", "3025551234"),
("PID105", "Phillip@craigle.com", "3025559876"),
("PID106", "Heath@craigle.com", "3025554567")
;

-- This is the statement will load the Test Data for the Order Staff Data.

INSERT INTO Order_Staff(pnum_FK, empID)
VALUES
("PID107", "T100"),
("PID108", "T200"),
("PID109", "T300")
;

-- This is the statement will load the Test Data for the Delivery Person Data.

INSERT INTO Delivery_Person(pnum_FK, phone, model)
VALUES
("PID110","6105559876","Civic"),
("PID111", "6105556789", "beetle"),
("PID112", "6105556754","F 150"),
("PID113", "2155556567", "Talon")
;

-- This is the statment will load the Test Data for the Pizza table.
-- In the test data their are 4 categories.

INSERT INTO Pizza(item_num, size, price)
VALUES  
("1","sm","4.99"),
("2", "me", "5.99"),
("3", "la","6.99"),
("4", "el", "7.99")
;

-- This is the statement will load the Test Data for the Pizza Order Table.
-- Each order instance relates to the customer making the order.
-- Each order instance relates to the Staff taking the order.
-- Each order instance relates to delivery person transporting the order.

INSERT INTO Pizza_Order(order_num, odate, otype, empid_FK, cust_FK, deliveryPerson_FK)
VALUES 
("INV#0001",    "2021/08/08",   "Delivery", "T100", "PID100",   "PID110"),
("INV#0002",    "2021/08/08",   "Delivery", "T200", "PID101",   "PID111"),
("INV#0003",	"2021/08/08",	"Delivery",	"T300",	"PID102",	"PID112"),
("INV#0004",	"2021/08/09",	"Delivery",	"T100",	"PID103",	"PID113"),
("INV#0005",	"2021/08/09",	"Delivery",	"T200",	"PID104",	"PID110"),
("INV#0006",	"2021/08/09",	"Delivery",	"T300", "PID105",	"PID111"),
("INV#0007",	"2021/08/10",	"Delivery",	"T100",	"PID106",	"PID112"),
("INV#0008",	"2021/08/10",	"Delivery",	"T200",	"PID104",	"PID113"),
("INV#0009",	"2021/08/10",	"Delivery",	"T300",	"PID105",	"PID110"),
("INV#0010",	"2021/08/10",	"Delivery",	"T300",	"PID106",	"PID111")
;

-- This is the statement will load the Test DATA for the Pizza ORder Item Table
-- in the test data their are test order items for the order for three days.
-- Each order instance relates to invoice number of the order item.
-- Each order instance points back to the size of the pizza for the order item.
INSERT INTO Order_Item(order_num_FK, item_num_FK, autogen)
VALUES 
("INV#0001",	"2",	"1"),
("INV#0001",	"1",	"2"),
("INV#0002",	"2",	"3"),
("INV#0003",	"3",	"4"),
("INV#0004",	"4",	"5"),
("INV#0005",	"1",	"6"),
("INV#0006",	"2",    "7"),
("INV#0007",	"3",	"8"),
("INV#0008",	"4",	"9"),
("INV#0009",    "1",    "10"),
("INV#0010",	"2",	"11")
;

