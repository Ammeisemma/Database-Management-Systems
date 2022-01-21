-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: August 13, 2021.
-- Last Edited August 24, 2021.
-- FINAL PROJECT
-- Database for a PetStore

/*
Drop, Create, and Use the Database before creating the Tables
*/


-- DROP DATABASE IF EXISTS
DROP DATABASE IF EXISTS PetStore;

-- CREATE DATABASE.
CREATE DATABASE PetStore;

-- USE DATABASE PetStore
USE PetStore;

-- Create Customer table if it doesn't exist
CREATE TABLE IF NOT EXISTS Customer 
(
    CUS_ID     INT auto_increment,
    CUS_AREA   INT(3) NOT NULL,
    CUS_PHONE  INT(7) NOT NULL,
    CUS_FNAME  VARCHAR(50) NOT NULL,
    CUS_LNAME  VARCHAR(50) NOT NULL,
    CUS_MNAME  VARCHAR(50) NOT NULL,
    CUS_STREET VARCHAR(50) NOT NULL,
    CUS_CITY   VARCHAR(50) NOT NULL,
    CUS_STATE  VARCHAR(2) NOT NULL,
    CUS_ZIP    VARCHAR(30) NOT NULL,


   CONSTRAINT Customer_PK PRIMARY KEY (CUS_ID)
) engine = innodb auto_increment = 5;

-- Create CustomerSale Table if it doesn't exist
CREATE TABLE IF NOT EXISTS CustomerSale
(
  SALE_ID  INT auto_increment,
  CUS_ID  INT,
  SALE_QUANT  INT NOT NULL,
  SALE_BILL INT NOT NULL,


  CONSTRAINT CustomerSale_PK PRIMARY KEY (SALE_ID),
  CONSTRAINT Customer_FK1 FOREIGN KEY (CUS_ID)
  REFERENCES Customer (CUS_ID)
) engine = innodb;

-- Create Vendor Table if it doesn't exist
CREATE TABLE IF NOT EXISTS Vendor 
(
  VEN_INVOICE_NUM  INT auto_increment,
  VEN_NAME  VARCHAR(50) NOT NULL,
  VEN_PRODUCT VARCHAR(50) NOT NULL,
  VEN_COST INT NOT NULL,
  VEN_TOTAL INT NOT NULL,


  CONSTRAINT Vendor_PK PRIMARY KEY (VEN_INVOICE_NUM)
) engine = innodb;

-- Create Merchandise Table if it doesn't exist
CREATE TABLE IF NOT EXISTS Merchandise
(
  MER_ID   INT auto_increment,
  VEN_INVOICE_NUM INT,
  MER_TYPE   VARCHAR(50) NOT NULL,
  MER_PET    VARCHAR(50) NOT NULL,
  MER_COST   INT NOT NULL,

  CONSTRAINT Merchandise_PK PRIMARY KEY (MER_ID),
  CONSTRAINT Vendor_FK1 FOREIGN KEY (VEN_INVOICE_NUM)
  REFERENCES Vendor (VEN_INVOICE_NUM)
) engine = innodb;

-- Create Pet Table if it doesn't existersion for the right syntax to use near 'DELIMET
CREATE TABLE IF NOT EXISTS Pet
(
  PET_ID   INT,
  PET_SPECIES VARCHAR(50) NOT NULL,
  VEN_INVOICE_NUM   INT,
  PET_QUANTITY INT NOT NULL,

  CONSTRAINT Pet_PK PRIMARY KEY (PET_ID),
  CONSTRAINT VENDOR_FK2 FOREIGN KEY (VEN_INVOICE_NUM)
  REFERENCES Vendor (VEN_INVOICE_NUM)
) engine = innodb;

-- Create EmployeeService Table if it doesn't exist
CREATE TABLE IF NOT EXISTS EmployeeService
(
  SERV_ID   INT,
  EE_ID     INT,
  SERV_TYPE   VARCHAR(50) NOT NULL,
  EE_FNAME     VARCHAR(50) NOT NULL,

  CONSTRAINT EmployeeService_PK PRIMARY KEY (SERV_ID, EE_ID) 
) engine = innodb ;

-- Create Service Table if it doesn't exist
CREATE TABLE IF NOT EXISTS Serve
(
  SERV_ID  INT,
  SERV_NUM_PET INT(6) NOT NULL,
  SERV_COST   INT NOT NULL,

  CONSTRAINT Serve_PK1 PRIMARY KEY (SERV_ID)
) engine = innodb;

-- Create Employee Table if it doesn't exist
CREATE TABLE IF NOT EXISTS Employee
(
  EE_ID INT,
  EE_AREA   INT(3) NOT NULL,
  EE_PHONE  INT(7) NOT NULL,
  EE_FNAME  VARCHAR(50) NOT NULL,
  EE_LNAME  VARCHAR(50) NOT NULL,
  EE_MNAME  VARCHAR(50) NOT NULL,
  EE_STREET VARCHAR(50) NOT NULL,
  EE_CITY   VARCHAR(50) NOT NULL,
  EE_STATE  VARCHAR(2) NOT NULL,
  EE_ZIP    VARCHAR(30) NOT NULL,
  EE_SSN    VARCHAR(8) NOT NULL,

  CONSTRAINT Employee_PK PRIMARY KEY (EE_ID)
) engine = innodb;


-- INSERT data into EmployeeService
INSERT INTO EmployeeService(SERV_ID, EE_ID, SERV_TYPE, EE_FNAME)
VALUES(21, 2356, "Grooming", "John"),
      (22, 2564, "Check Up", "Steff"),
      (23, 9087, "Puppy Training", "Ztick"),
      (24, 9087, "Vaccine", "Ztick"),
      (22, 2356, "Check up", "John"),
      (21, 2564, "Grooming", "Steff"),
      (23, 1234, "Puppy Training", "Toon");



-- INSERT data into Employee 
INSERT INTO Employee(EE_ID, EE_AREA, EE_PHONE, EE_FNAME, EE_LNAME, EE_MNAME, EE_STREET, EE_CITY, EE_STATE, EE_ZIP, EE_SSN)
VALUES(2356, 267, 3450011, "John", "Mado", "erly", "7561 tonon", "Philly", "PA", "18482", 85369521),
      (2564, 267, 3921849, "Steff", "Sannn", "Mourn", "234 Walk RD", "Philly", "PA", "6734", 87965214),
      (4321, 267, 5625812, "Tan", "Plato", "Ruy", "483 eiarry", "Philly", "PA", "383482", 23589021),
      (1234, 267, 1098650, "Toon", "Stars", "Earth", "7356 Blan Way", "Philly", "PA", "149563", 29580438),
      (9087, 267, 2351083, "Ztick", "Jerry", "Blumzy", "2254 Red Lion RD", "Philly", "PA", "1853", 38505947);


-- INSERT data into Serve
INSERT INTO Serve(SERV_ID, SERV_COST, SERV_NUM_PET)
VALUES(21, 100, 2),
      (22, 300, 5),
      (23, 600, 1),
      (24, 30, 1),
      (25, 75, 1);




-- Insert data into Customer Table
INSERT INTO Customer(CUS_AREA, CUS_PHONE, CUS_FNAME, CUS_LNAME, CUS_MNAME, CUS_STREET, CUS_CITY, CUS_STATE, CUS_ZIP)
VALUES(267, 3450011, "Anna", "Mercado", "Mercy", "7114 addon", "Philly", "PA", "13432"),
      (267, 3921849, "Zack", "Zann", "Saturn", "654 Run RD", "Philly", "PA", "15443"),
      (267, 6935812, "Tim", "Bado", "Pluty", "4519 Cherry", "Philly", "PA", "15462"),
      (267, 2003650, "Tom", "Nizzo", "Gaia", "7854 Blue RD", "Philly", "PA", "15443"),
      (267, 2369083, "Jack", "Berry", "Zerry", "2494 Red Lion RD", "Philly", "PA", "1853");




-- Insert data into CustomerSale
INSERT INTO CustomerSale(CUS_ID, SALE_QUANT, SALE_BILL)
VALUES(5, 20, 350.66),
      (7, 100, 3004),
      (6, 3, 10),
      (9, 100, 3004),
      (8, 60, 200); 





-- INSERT data into Vendor
INSERT INTO Vendor(VEN_NAME, VEN_PRODUCT, VEN_COST, VEN_TOTAL)
VALUES("Humble Fruities", "Dog Food", 5, 300),
      ("Humble Fruities", "Cat Toys", 6, 400),
      ("Blue Chewy", "Turtle Food", 10, 250),
      ("Healthy Pets", "Hamster Food", 7, 800),
      ("Blue Chewy", "Cat Food", 20, 670),
      ("N/A", "N/A", 0, 0); 



-- INSERT data into Merchandise
INSERT INTO Merchandise(MER_TYPE, MER_PET, MER_COST)
VALUES("Toys", "Dog", 20),
      ("Food", "Snake", 30),
      ("Food", "Turtle", 50);


-- INSERT data into Merchandise second
INSERT INTO Merchandise(VEN_INVOICE_NUM, MER_TYPE, MER_PET, MER_COST)
VALUES(4, "Food", "Hamster", 25),
      (5, "Food", "Cat", 45);



-- INSERT INTO data PET 
INSERT INTO Pet(Pet_ID, PET_SPECIES, PET_QUANTITY)
VALUES(111, "Dogs", 40),
      (112, "Cats", 50),
      (113, "Hamsters", 60),
      (114, "Snakes", 20),
      (115, "Turtles", 54);


-- Multi Table Query.

SELECT c.CUS_FNAME , c.CUS_LNAME,s.SALE_QUANT, s.SALE_BILL 
FROM   Customer c, CustomerSale s
Where   c.CUS_ID = s.CUS_ID;


/*
The combination CREATE TABLE, SELECT statement
*/

CREATE TABLE CustomerSale_Backup AS
select * from CustomerSale;

  

/*
These Equality JOINS are being made using the JOIN ON Clause
*/
-- JOIN, only items that match will be listed. 

SELECT * FROM Vendor
JOIN  Merchandise 
ON Vendor.VEN_INVOICE_NUM = Merchandise.VEN_INVOICE_NUM;

-- Left Join, all items in the left table will list and the null values on the right that
-- Do not match will show.
  
SELECT * FROM Vendor
LEFT JOIN  Merchandise ON Vendor.VEN_INVOICE_NUM = Merchandise.VEN_INVOICE_NUM;

-- Only Items that are NULL on the right of the left join.
SELECT * FROM Vendor
LEFT JOIN  Merchandise ON Vendor.VEN_INVOICE_NUM = Merchandise.VEN_INVOICE_NUM
WHERE Merchandise.VEN_INVOICE_NUM IS NULL; 

-- Example of Sort Ascending order.
SELECT e.EE_FNAME, EE_LNAME, s.SERV_ID
FROM Employee e, Serve s, EmployeeService es
WHERE s.SERV_ID = es.SERV_ID AND e.EE_ID = es.EE_ID
  ORDER BY es.SERV_ID; 

-- CREATE Mirror Table
create table Contract_Employees
(
  EE_ID INT,
  EE_AREA   INT(3) NOT NULL,
  EE_PHONE  INT(7) NOT NULL,
  EE_FNAME  VARCHAR(50) NOT NULL,
  EE_LNAME  VARCHAR(50) NOT NULL,
  EE_MNAME  VARCHAR(50) NOT NULL,
  EE_STREET VARCHAR(50) NOT NULL,
  EE_CITY   VARCHAR(50) NOT NULL,
  EE_STATE  VARCHAR(2) NOT NULL,
  EE_ZIP    VARCHAR(30) NOT NULL,
  EE_SSN    VARCHAR(8) NOT NULL,

   CONSTRAINT Employee_PK primary key (EE_ID)
) engine = innodb;


-- Insert data from mirrored Table;
INSERT INTO Contract_Employees
(SELECT * 
FROM Employee
LIMIT 3);


INSERT INTO Contract_Employees(EE_ID, EE_AREA,	EE_PHONE,	EE_FNAME,	EE_LNAME,	EE_MNAME,	EE_STREET,	EE_CITY,	EE_STATE,	EE_ZIP,	EE_SSN
) VALUES (4584, 215, 5551212, "John", "Jones","Nani", '123 Main St', "Philly", "PA", "32422", 43940382);  
   

   
SELECT se.EE_ID as "Contract" ,se.EE_FNAME , se.EE_LNAME,se.EE_STATE, se.EE_PHONE, e.EE_ID as "All Employees", e.EE_FNAME, e.EE_STATE
FROM Contract_Employees se
RIGHT JOIN Employee e
    on se.EE_ID = e.EE_ID;
   
   
 
 /* 
 Union Operations:  One with a unique result and the other will include duplicates.  
 */

SELECT * FROM Contract_Employees 
UNION
SELECT * FROM Employee;

SELECT *, "Contract Employees" SOURCE FROM Contract_Employees
UNION ALL
SELECT *, 'Employee' FROM Employee;


 
-- INTERSECTION Operation Example 1
SELECT ce.EE_ID, ce.EE_FNAME 
 FROM Contract_Employees ce
 INNER JOIN Employee e
 ON ce.EE_ID = e.EE_ID and ce.EE_FNAME = e.EE_FNAME;

 
 
-- MINUS or Difference Example 1
SELECT DISTINCT EE_ID, EE_FNAME 
  FROM Employee 
  WHERE (EE_ID, EE_FNAME) NOT IN
   (SELECT EE_ID, EE_FNAME FROM Contract_Employees);

-- Difference Example 2. 
SELECT DISTINCT EE_ID, EE_FNAME 
  FROM Contract_Employees 
  WHERE (EE_ID, EE_FNAME) NOT IN
  (SELECT EE_ID, EE_FNAME FROM Employee);
   

   
-- Group By 1


SELECT DISTINCT e.EE_ID, e.EE_FNAME, e.EE_LNAME, SERV_ID, count(*)
FROM Employee e
JOIN EmployeeService se
ON se.EE_ID = e.EE_ID
GROUP BY (se.EE_ID); 

-- Group By 2.
-- With Having Clause.
SELECT e.EE_ID, e.EE_FNAME, e.EE_LNAME, SERV_ID, count(*)
FROM Employee e
JOIN EmployeeService se
ON se.EE_ID = e.EE_ID
GROUP BY (e.EE_ID)
HAVING count(*) = 1; 




-- Alter Table to drop column middle name since it's not useful to operation.  
-- Example 1
ALTER TABLE Customer
DROP COLUMN CUS_MNAME;

-- Alter TABLE in order to provide more security to Employees. 
-- Example 2.
ALTER TABLE Employee
DROP COLUMN EE_SSN;

--  You must also include at least two UPDATE Query Examples

SELECT * 
FROM Pet;

UPDATE Pet
SET VEN_INVOICE_NUM = 6
WHERE VEN_INVOICE_NUM IS NULL;

UPDATE Pet
SET PET_QUANTITY = 0
WHERE VEN_INVOICE_NUM = 6;

SELECT * 
FROM Pet;


-- You must also include at least two DELETE Query Examples


-- SHOW BEFORE DELETE OPERATION 

SELECT * 
FROM Vendor;

SELECT * 
FROM Merchandise;



-- Delete.
DELETE FROM Merchandise
WHERE VEN_INVOICE_NUM IS NULL;

DELETE FROM Vendor
WHERE VEN_INVOICE_NUM <= 3;

-- SHOW DELETE OPERATION 

SELECT * 
FROM Vendor;


-- AGGREGATE 1
SELECT MAX(SALE_BILL) AS "MAX_SPENT"
FROM CustomerSale;

-- AGGREAGATE 2
SELECT  MIN(SALE_BILL) AS "Lowest Spent"
FROM CustomerSale ;

-- Create View 1.
CREATE VIEW ContractSSN AS

SELECT EE_FNAME, EE_LNAME, EE_AREA, EE_PHONE, EE_SSN
FROM Contract_Employees;

-- CREATE View 2. 
CREATE VIEW firstCustomer AS
SELECT CUS_ID, CUS_FNAME, CUS_LNAME 
FROM Customer
WHERE CUS_ID = 5;

SELECT * FROM firstCustomer;

-- Stored Procedure.
DELIMITER //


CREATE PROCEDURE describePetStore()
BEGIN 
     DESCRIBE Pet;
     DESCRIBE Merchandise;
     DESCRIBE Vendor;
     DESCRIBE Employee;
     DESCRIBE EmployeeService;
     DESCRIBE Customer;
     DESCRIBE CustomerSale;
     DESCRIBE Vendor;
END //

DELIMITER ;
/*
CALL describePetStore();
-- Create Stored Trigger
CREATE TABLE Pet_Stored
(
  PET_ID   INT PRIMARY KEY,
  PET_SPECIES VARCHAR(50) NOT NULL,
  VEN_INVOICE_NUM   INT,
  PET_QUANTITY INT NOT NULL,
  Change_Date DATETIME DEFAULT NULL
);

DELIMITER $$
CREATE TRIGGER before_Pet_update
    BEFORE UPDATE ON Pet
    FOR EACH ROW 
BEGIN
 INSERT INTO Pet_Stored
 SET action = 'update',
  PET_ID = OLD.PET_ID, 
  PET_SPECIES = OLD.PET_SPECIES,
  VEN_INVOICE_NUM = OLD.VEN_INVOICE_NUM,
  PET_QUANTITY = OLD.PET_QUANTITY, 
  CHANGE_DATE = NOW();
END $$
DELIMITER ;

UPDATE Pet
SET PET_QUANTITY = 20
WHERE PET_QUANTITY = 0 AND PET_SPECIES = "Dogs";
*/



