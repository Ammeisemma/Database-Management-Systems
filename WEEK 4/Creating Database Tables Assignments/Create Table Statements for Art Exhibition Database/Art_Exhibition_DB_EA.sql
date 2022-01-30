-- Created by: Emmanuel Almonte.
-- For Course CIS 205, Professor: Craig Nelson.
-- Last modified 08/07/2021.


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
    art_name    VARCHAR(75) NOT NULL,
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
