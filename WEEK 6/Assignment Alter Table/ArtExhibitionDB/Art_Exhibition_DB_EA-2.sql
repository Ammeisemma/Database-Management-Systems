-- Created by: Emmanuel Almonte.
-- For Course CIS 205, Professor: Craig Nelson.
-- Last modified 08/17/2021.


-- Create and USE the DATABASE
DROP DATABASE IF EXISTS Art_Exhibition_DB;
CREATE DATABASE IF NOT EXISTS Art_Exhibition_DB;
USE Art_Exhibition_DB;

-- Create ExhibitionSite Table
-- Links to Artists and Artwork
-- This is the many on a many to many relationship
CREATE TABLE IF NOT EXISTS Exhibition_Site
(
    StartDate    DATE NOT NULL,
    EndDate     DATE NOT NULL,
    contactPerson    VARCHAR(50) NOT NULL,
    RentalCost    int(10) NOT NULL,
    siteName    VARCHAR(50) NOT NULL,
    City    VARCHAR(50) NOT NULL,
    contactPhone    CHAR(10) NOT NULL,
    site_Address    VARCHAR(50) NOT NULL,

    CONSTRAINT Exhibition_Site_PK PRIMARY KEY (siteName)
);

-- Create Artist Table
-- This is the many of a M-M relationship.

CREATE TABLE IF NOT EXISTS Artist
(
    aName    VARCHAR(50) NOT NULL ,
    aAddress    VARCHAR(50) NOT NULL,
    aSsn    CHAR(9) NOT NULL,
    email    VARCHAR(50) NOT NULL,
    phone    CHAR(10) NOT NULL,
    birthDate    DATE NOT NULL,

    CONSTRAINT Artist_PK PRIMARY KEY(aSsn)

);

-- Create the Artwork Table.

CREATE TABLE IF NOT EXISTS Artwork
(
    art_name    VARCHAR(75),
    art_worth    int,
    art_type    VARCHAR(50) NOT NULL,
    ssn_FK    CHAR(9)NOT NULL,

    CONSTRAINT Artwork_PK PRIMARY KEY (art_name),
    CONSTRAINT Artwork_FK1 FOREIGN KEY(ssn_FK)
    REFERENCES Artist(aSsn)
);

-- Create Artwork_Shown Table

CREATE TABLE IF NOT EXISTS Artwork_Shown
(
    art_name_FK    VARCHAR(75) NOT NULL,
    siteName_FK    VARCHAR(50) NOT NULL,

    CONSTRAINT Artwork_Shown_FK1 FOREIGN KEY(art_name_FK)
    REFERENCES Artwork(art_name),

    CONSTRAINT Artwork_Shown_FK2 FOREIGN KEY(siteName_FK)
    REFERENCES Exhibition_Site(siteName)
);


-- Create Exhibition_Host Table.
CREATE TABLE IF NOT EXISTS Exhibition_Host
(
    ssn_FK    CHAR(9) NOT NULL,
    siteName_FK    VARCHAR(50) NOT NULL,

    CONSTRAINT Exhibition_Host_FK1 FOREIGN KEY(ssn_FK)
    REFERENCES Artist(aSsn),

    CONSTRAINT Exhibition_Host_FK2 FOREIGN KEY(siteName_FK)
    REFERENCES Exhibition_Site(siteName)
);

-- INSERT data for all tables.

-- These are the INSERT INTO Statements for Person.

INSERT INTO Exhibition_Site(StartDate, EndDate, contactPerson, RentalCost, siteName, City, contactPhone, site_Address)
VALUES 
("2021/08/21", "2021/08/28", "Fred", 500, "El Espacio", "Philly", "2155559876", "23 Shrewbury Court"),
("2021/08/10", "2021/08/25", "Chuck", 500, "El Toro", "Philly", "2158768974", "45 Bluebury Court"),
("2021/08/03", "2021/08/15", "Bobby", 1000, "Casa Blanca", "Aliquippa", "2678873621", "281 Burrberry Hall"),
("2021/09/01", "2021/09/06", "Jack", 1000, "Dia Day", "Aliquippa", "2677874103", "65 ChurchHill"),
("2021/08/05", "2021/08/13", "Cube", 1000, "Cara Blue", "Aliquippa", "2678872593", "281 Burrberry Hall"),
("2021/08/03", "2021/08/11", "Jhonny", 3000, "Studio One", "Bradford", "5159687872", " 36 Stock Hill"),
("2021/09/10", "2021/09/25", "Ski", 2000, "The Void", "Bradford", "5156987452", "54 Stream Rhode")
;


-- These are the INSERT INTO Statements for Artist.

INSERT INTO Artist(aName, aAddress, aSsn, email, phone, birthDate)
VALUES
("Valerie", "281 S 52nd Street", "986650000", "Val@proffesh.com", "6352145898", "1990/02/20"),
("Han", "3234 W 32nd Street", "520657897", "Han@proffesh.com", "6545842301", "1995/05/11"),
("Jane", "393 New Sath Street", "189127676", "Jane@proffesh.com", "6745149200", "1970/01/01"),
("Brad", "2345 Bull Street", "120362421", "Brad@proffesh.com", "6121235568", "1985/06/26"),
("Stanley", "358 Edge Street", "963520101", "Stanley@proffesh.com", "6374125965", "1989/09/25")
;



-- These are the INSERT INTO Statements for Artwork.


INSERT INTO Artwork(art_name, art_worth, art_type, ssn_FK)
VALUES
("Val1.0", 750, "Abstract", "986650000"),
("HEYSR4.0", 800, "Abstract", "520657897"),
("Bix2.0", 550, "Abstract", "189127676"),
("BRSHOW1.0", 890, "Abstract", "120362421"),
("Stata.0", 12322, "Abstract", "963520101")
;


-- These are the INSERT INTO Statements for Artwork_Shown.


INSERT INTO Artwork_Shown(art_name_FK, siteName_FK)
VALUES
("Val1.0", "El Espacio"),
("HEYSR4.0", "El Toro"),
("Bix2.0", "Casa Blanca"),
("BRSHOW1.0", "Dia Day"),
("Stata.0", "Cara Blue")
;


-- These are the INSERT INTO Statements for Exhibition_Host.

INSERT INTO Exhibition_Host(ssn_FK, siteName_FK)
VALUES
("986650000", "El Espacio"),
("520657897", "El Toro"),
("189127676", "Casa Blanca"),
("120362421", "Dia Day"),
("963520101", "Cara Blue")
;


-- Alter TABLES ART EXHIBTION.



-- SHOW ALL TABLES BEFORE ALTERATION.
SHOW TABLES;
DESCRIBE Artist;

-- ALTER TABLE.
ALTER TABLE Artist
ADD instagram_acc VARCHAR(50),
ADD networth VARCHAR(50); 

-- SHOW ALL TABLES BEFORE ALTERATION.
SHOW TABLES;
DESCRIBE Artist;

-- MODIFY TABLE.
ALTER TABLE Artist 
MODIFY instagram_acc VARCHAR(100);

-- SHOW ALL TABLES BEFORE ALTERATION.
SHOW TABLES;
DESCRIBE Artist;

-- CHANGE COLUMN.
ALTER TABLE Artist
CHANGE COLUMN instagram_acc insta_name VARCHAR(100);

-- SHOW ALL TABLES BEFORE ALTERATION.
SHOW TABLES;
DESCRIBE Artist;

-- RENAME CLAUSE.
ALTER TABLE Artist
RENAME All_Artist;


-- SHOW ALL TABLES BEFORE ALTERATION.
SHOW TABLES;
DESCRIBE All_Artist;
