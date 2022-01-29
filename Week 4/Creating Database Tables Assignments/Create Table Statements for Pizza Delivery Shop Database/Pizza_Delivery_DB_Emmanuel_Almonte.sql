-- Created by: Emmanuel Almonte.
-- For Course CIS 205, Professor: Craig Nelson.
-- Last modified 08/06/2021.


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


    CONSTRAINT Customer_PK PRIMARY KEY (email, pnum_FK),
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
    order_num    VARCHAR(5),
    otype    CHAR(3),
    empid_FK    VARCHAR(5),
    email_FK    VARCHAR(50),
    phone_FK    CHAR(10),

    CONSTRAINT order_PK PRIMARY KEY (order_num),

    CONSTRAINT order_FK1 FOREIGN KEY (empid_FK)
    REFERENCES Order_Staff (empID),

    CONSTRAINT order_FK2 FOREIGN KEY (email_FK)
    REFERENCES Customer(email),

    CONSTRAINT order_FK3 FOREIGN KEY (phone_FK)
    REFERENCES Delivery_Person(phone)
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
    order_num_FK    VARCHAR(5),
    item_num_FK     CHAR(5),

    CONSTRAINT order_item_PK PRIMARY KEY(autogen),

    CONSTRAINT order_item_FK1 FOREIGN KEY (order_num_FK)
    REFERENCES Pizza_Order(order_num),

    CONSTRAINT order_item_FK2 FOREIGN KEY(item_num_FK)
    REFERENCES Pizza(item_num)

);