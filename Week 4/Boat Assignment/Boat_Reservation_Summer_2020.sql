--      Instructor: Craig Nelson
--      E-mail: cnelson@ccp.edu
--      Class: CIS 205
--      
-- 
--      Overview: This file will create the tables and load the data
--              that will be used in the class exercises.
--      

/*      NOTE: It is good practice to use the "drop table" statement
            before the "create table" statement in case the table
            already exists.
*/
      

CREATE DATABASE sbr;  -- Create the Sailor Boat Reservation Database
USE sbr;

-- Utility Statements to Drop Individual Tables if needed
DROP TABLE IF EXISTS Reservation;
DROP TABLE IF EXISTS Boat;
DROP TABLE IF EXISTS Sailor;

-- Create the Sailor Table if it dies not currently exist.
CREATE TABLE IF NOT EXISTS Sailor
(
      sid         INT(5),
      sname       VARCHAR(30) NOT NULL,
      rating      INT,
      age         DOUBLE,
      CONSTRAINT Sailor_PK PRIMARY KEY(sid)
      )ENGINE = INNODB;


-- Create the Boat Table if it dies not currently exist.
CREATE TABLE IF NOT EXISTS boat(
      bid      INT NOT NULL auto_increment,
      bname      VARCHAR(30),
      color      VARCHAR(10),
      CONSTRAINT boat_pk PRIMARY KEY(bid)
      )ENGINE = INNODB;


-- Create the Sailor Table if it dies not currently exist.
CREATE TABLE IF NOT EXISTS Reservation
(
      r_num INT NOT NULL auto_increment,
      sid_FK        INT(5),
      bid_FK        INT(3),
      rdate         DATE,
      price         DOUBLE,

      CONSTRAINT Reservation_PK PRIMARY KEY(r_num),
      CONSTRAINT Reservation_FK1 FOREIGN KEY (sid_FK) REFERENCES sailor(sid),
      CONSTRAINT Reservation_FK2 FOREIGN KEY (bid_FK) REFERENCES boat(bid)
      
      ) ENGINE = INNODB; 

      
-- The following SQL statements populate the sailor table

INSERT INTO sailor(sid, sname, rating, age)
VALUES (22, 'DUSTIN', 7, 45.0);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (29, 'BRUTUS', 1, 33.0);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (31, 'LUBBER', 8, 55.5);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (32, 'ANDY', 8, 25.5);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (58, 'RUSTY', 10, 35.0);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (64, 'HORATIO', 7, 35.0);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (71, 'ZORBA', 10, 16.0);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (74, 'HORATIO', 9, 35.0);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (85, 'ART', 3, 25.5);

INSERT INTO sailor(sid, sname, rating, age)
VALUES (95, 'BOB', 3, 63.5);



-- The following SQL statements populate the boat table

INSERT INTO boat (bname, color)
VALUES ( 'INTERLAKE', 'BLUE');

INSERT INTO boat ( bname, color)
VALUES ( 'INTERLAKE', 'RED');

INSERT INTO boat ( bname, color)
VALUES ( 'CLIPPER', 'GREEN');

INSERT INTO boat ( bname, color)
VALUES ( 'MARINE', 'RED');



-- The following SQL statements populate the reservation table

INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (22, 1, '1998-10-10');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (22, 2, '2020-10-10');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (22, 3, '2020-10-08');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (22, 4, '2020-10-07');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (31, 2, '2020-11-10');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (31, 3, '2020-11-06');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (31, 4, '2020-11-12');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (64, 1, '2020-09-05');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (64, 2, '2020-09-08');


INSERT INTO reservation (sid_FK, bid_FK, rdate)
VALUES (74, 3, '2020-09-08');

