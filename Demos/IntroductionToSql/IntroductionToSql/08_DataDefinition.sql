
-----------------------------------------------------------------
-- CREATE DATABASE and query it ---------------------------------
-----------------------------------------------------------------

-- CREATE DATABASE
CREATE DATABASE Contacts;

-- Query - USE/USE DATABASE statement
USE Contacts;

-- Query - Fully qualified table name
SELECT * FROM Contacts.person;

-- Query - Database schema
SELECT * FROM dbo.person;

-----------------------------------------------------------------
-- CREATE TABLE -------------------------------------------------
-----------------------------------------------------------------

USE Contacts;
CREATE TABLE email_address
(
	email_address_id INTEGER,
	email_address_person_id INTEGER,
	email_address VARCHAR(55)
);

-----------------------------------------------------------------
-- CREATE TABLE - "To NULL or NOT to NULL...?" ------------------
-----------------------------------------------------------------

USE Contacts;
CREATE TABLE email_address
(
	email_address_id INTEGER NOT NULL,
	email_address_person_id INTEGER,
	email_address VARCHAR(55) NOT NULL
);

-----------------------------------------------------------------
-- CREATE TABLE - PRIMARY KEY -----------------------------------
-----------------------------------------------------------------

USE Contacts;
CREATE TABLE email_address
(
	email_address_id INTEGER PRIMARY KEY,
	email_address_person_id INTEGER,
	email_address VARCHAR(55) NOT NULL
);

-----------------------------------------------------------------
-- CREATE TABLE - CONSTRAINT ------------------------------------
-----------------------------------------------------------------

USE Contacts;
CREATE TABLE phone_number
(
	phone_number_id INTEGER NOT NULL,
	phone_number_person_id INTEGER NOT NULL,
	phone_number VARCHAR(55) NOT NULL,
	CONSTRAINT
	PK_phone_number -- name of constraint
	PRIMARY KEY(phone_number_id)
);

-----------------------------------------------------------------
-- ALTER TABLE --------------------------------------------------
-----------------------------------------------------------------

ALTER TABLE email_address
ADD CONSTRAINT
FK_email_address_person
FOREIGN KEY
(email_address_person_id)
REFERENCES
person
(person_id);

-----------------------------------------------------------------
-- DROP TABLE ---------------------------------------------------
-----------------------------------------------------------------

USE Contacts;
DROP TABLE person;
