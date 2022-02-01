-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: August 16, 2021.
-- Alter TABLE Example


-- Create table vehicles.
CREATE TABLE vehicles (
    vehicleId INT,
    year INT NOT NULL,
    make VARCHAR(100) NOT NULL,
    PRIMARY KEY(vehicleId)
);

-- Alter table.
ALTER TABLE vehicles
ADD model VARCHAR(100) NOT NULL;

-- Alter table with mutiple columns.
ALTER TABLE vehicles
ADD color VARCHAR(50),
ADD note VARCHAR(255);


-- Modify note to 100 VARCHAR.
ALTER TABLE vehicles 
MODIFY note VARCHAR(101) NOT NULL;


-- Modify multiple columns.
ALTER TABLE vehicles 
MODIFY year SMALLINT NOT NULL,
MODIFY color VARCHAR(20) NULL AFTER make;

-- Rename a column.
ALTER TABLE vehicles 
CHANGE COLUMN note vehicleCondition VARCHAR(100) NOT NULL;


-- ALTER TABLE vehicles by dropping an attribute.
DROP COLUMN vehicleCondition;

-- Alter a table by changing name of table. 
ALTER TABLE vehicles 
RENAME TO cars; 