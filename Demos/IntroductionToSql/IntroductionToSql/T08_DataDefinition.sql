-------------------------------------------------------------------------------
-- CREATE DATABASE
--
-- Ex1
--
-- Create [Shop] database
-------------------------------------------------------------------------------

CREATE DATABASE Shop;

-------------------------------------------------------------------------------
-- CREATE TABLE - inline constraints
--
-- Ex2
--
-- Create [Customers] table
--
-------------------------------------------
-- Columns:
-------------------------------------------
-- id INTEGER             - PRIMARY KEY
-- firstname VARCHAR(256) - OPTIONAL
-- lastname VARCHAR(256)  - OPTIONAL
-------------------------------------------------------------------------------

CREATE TABLE Customers
(
id INTEGER PRIMARY KEY,
firstname VARCHAR(256),
lastname VARCHAR(256)
);

-------------------------------------------------------------------------------
-- CREATE TABLE - inline constraints
--
-- Ex3
--
-- Create [Orders] table
--
-------------------------------------------
-- Columns:
-------------------------------------------
-- id INTEGER          - PRIMARY KEY
-- customerid INTEGER  - FOREIGN KEY
-- price DECIMAL(10,2) - REQUIRED
-------------------------------------------------------------------------------

CREATE TABLE Orders
(
id INTEGER PRIMARY KEY,
customerid INTEGER,
FOREIGN KEY (customerid) REFERENCES Customers(id),
price DECIMAL(10,2) NOT NULL
);

-------------------------------------------------------------------------------
-- DROP TABLE
--
-- Ex4
--
-- Drop [Orders] table
-------------------------------------------------------------------------------

DROP TABLE Orders;

-------------------------------------------------------------------------------
-- CREATE TABLE - CONTRAINT section
--
-- Ex5
--
-- Create [Orders] table
--
-------------------------------------------
-- Columns:
-------------------------------------------
-- id INTEGER          - PRIMARY KEY
-- customerid INTEGER  - FOREIGN KEY
-- price DECIMAL(10,2) - REQUIRED
-------------------------------------------------------------------------------

CREATE TABLE Orders
(
id INTEGER,
customerid INTEGER,
price DECIMAL(10,2),

CONSTRAINT PK_Orders PRIMARY KEY(id),
CONSTRAINT FK_Orders_Customers FOREIGN KEY (customerid) REFERENCES Customers(id)
);

-------------------------------------------------------------------------------
-- ALTER TABLE - add column
--
-- Ex6
--
-------------------------------------------
-- Column:
-------------------------------------------
-- productname VARCHAR(256) - OPTIONAL
-------------------------------------------------------------------------------

ALTER TABLE Orders
ADD prodctname VARCHAR(256);

-------------------------------------------------------------------------------
-- ALTER TABLE - alter column
--
-- Ex7
--
-------------------------------------------
-- Column:
-------------------------------------------
-- productname VARCHAR(128) - OPTIONAL
-------------------------------------------------------------------------------

ALTER TABLE Orders
ALTER COLUMN productname VARCHAR(128);

-------------------------------------------------------------------------------
-- ALTER TABLE - drop column
--
-- Ex8
--
-- Drop [productname] column
-------------------------------------------------------------------------------

ALTER TABLE Orders
DROP COLUMN productname;

-------------------------------------------------------------------------------
-- DROP TABLE
--
-- Ex9
--
-- Drop [Orders] and [Customers] tables
-------------------------------------------------------------------------------

DROP TABLE Orders;
DROP TABLE Customers;

-------------------------------------------------------------------------------
-- DROP DATABASE
--
-- Ex10
--
-- Drop [Shop] database
-------------------------------------------------------------------------------

USE master;
DROP DATABASE Shop;
