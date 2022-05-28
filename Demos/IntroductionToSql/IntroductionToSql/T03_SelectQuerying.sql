USE Contacts;

-----------------------------------------------------------------------------
-- SELECT - Simple - No database is used
--
-- Ex1
--
-- Show 'Hello' and 'World' values
-----------------------------------------------------------------------------

SELECT 'Hello', 'World';

-----------------------------------------------------------------------------
-- SELECT - Simple with aliases - No database is used
--
-- Ex2
-- 
-- Show 'Hello' and 'World' values as 'FirstWord' and 'SecondWord'
-----------------------------------------------------------------------------

SELECT 'Hello' AS FirstWord, 'World' AS SecondWord;

-----------------------------------------------------------------------------
-- SELECT - Bad - '*' wildcard is used to select all columns
--
-- Ex3
--
-- Show all columns
-----------------------------------------------------------------------------
 
 SELECT * FROM person;

-----------------------------------------------------------------------------
-- SELECT - Normal - Column names specified explicitly
--
-- Ex4
--
-- Show [person_first_name, person_last_name] columns
-----------------------------------------------------------------------------

SELECT person_first_name, person_last_name
FROM person;

-----------------------------------------------------------------------------
-- SELECT - Better - Column names qualified with table names
--
-- Ex5
--
-- Show [person_first_name, person_last_name] columns
-- Qualify column names with table name
-----------------------------------------------------------------------------

SELECT person.person_first_name, person.person_last_name
FROM person;

-----------------------------------------------------------------------------
-- SELECT - Best - Tables name alias
--
-- Ex6
--
-- Set alias [p] on [person] table
-- Show [person_first_name, person_last_name] columns using [p] alias
-----------------------------------------------------------------------------

SELECT p.person_first_name, p.person_last_name
FROM person AS p;

-----------------------------------------------------------------------------
-- SELECT - Column name alias
--
-- Ex7
--
-- Set alias [p] on [person] table
-- Show [person_first_name, person_last_name] columns ...
-- ... and set [FirstName, LastName] aliases on them
-----------------------------------------------------------------------------

SELECT p.person_first_name AS FirstName, p.person_last_name AS LastName
FROM person AS p;

-----------------------------------------------------------------------------
-- SELECT - Distinct single column
--
-- Ex8
--
-- Set alias [p] on [person] table
-- Show distinct [person_first_name] column
-----------------------------------------------------------------------------

SELECT DISTINCT p.person_first_name
FROM person AS p;

-----------------------------------------------------------------------------
-- SELECT - Distinct combination of columns
--
-- Ex9
--
-- Set alias [p] on [person] table
-- Show distinct combination of [person_first_name, person_last_name] columns
-----------------------------------------------------------------------------

SELECT DISTINCT p.person_first_name, p.person_last_name
FROM person AS p;
