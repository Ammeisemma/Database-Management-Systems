-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: August 16, 2021.
-- Cascade delete Example

-- Create a primary Key Table.
CREATE TABLE buildings (
    building_no INT AUTO_INCREMENT,
    building_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,

    CONSTRAINT Building_PK PRIMARY KEY (building_no)
);


-- Create a Foreign Key Table Associated with the Primary Key Table.
CREATE TABLE rooms (
    room_no INT AUTO_INCREMENT,
    room_name VARCHAR(255) NOT NULL,
    building_no INT NOT NULL,

    CONSTRAINT Rooms_PK PRIMARY KEY (room_no),

    CONSTRAINT rooms_FK1 FOREIGN KEY (building_no)
    REFERENCES buildings (building_no)
        ON DELETE CASCADE
);


-- Load Date into the Primary Key Table.
INSERT INTO buildings(building_name,address)
VALUES('ACME Headquaters','3950 North 1st Street CA 95134'),
      ('ACME Sales','5000 North 1st Street CA 95134');

-- Result for information request 1. 
-- show the loaded data.
SELECT * FROM buildings;



-- Load teh Data into the Foreign Key Table.
INSERT INTO rooms(room_name,building_no)
VALUES('Amazon',1),
      ('War Room',1),
      ('Office of CEO',1),
      ('Marketing',2),
      ('Showroom',2);

-- Result for information request 2.
-- Show the loaded data. 
SELECT * FROM rooms;

--
-- Delete a Primary Key Item Linked to a foreign Key Item.
DELETE FROM buildings 
WHERE building_no = 2;

-- Result for information request 3.
-- Verify the deletion of Both Primary and Foreign Key records.
SELECT * FROM rooms;

