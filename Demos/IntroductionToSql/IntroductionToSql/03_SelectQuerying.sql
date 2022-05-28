USE Contacts;

-----------------------------------------------------------------
-- SELECT - Simple - No database is used
-----------------------------------------------------------------

SELECT 'Hello','World';

-----------------------------------------------------------------
-- SELECT - Simple with aliases - No database is used
-----------------------------------------------------------------

SELECT 'Hello' as FirstWord, 'World' as SecondWord;

-----------------------------------------------------------------
-- SELECT - Bad - '*' wildcard is used to select all columns
-----------------------------------------------------------------
 
SELECT *
FROM person;

-----------------------------------------------------------------
-- SELECT - Normal - Column names specified explicitly
-----------------------------------------------------------------

SELECT person_first_name, person_last_name
FROM person;

-----------------------------------------------------------------
-- SELECT - Better - Column names qualified with table names
-----------------------------------------------------------------

SELECT person.person_first_name, person.person_last_name
FROM person;

-----------------------------------------------------------------
-- SELECT - Best - Tables name alias
-----------------------------------------------------------------

SELECT p.person_first_name, p.person_last_name
FROM person AS p;

-----------------------------------------------------------------
-- SELECT - Column name alias
-----------------------------------------------------------------

SELECT p.person_first_name AS FirstName
FROM person p;

-----------------------------------------------------------------
-- SELECT - Distinct single column
-----------------------------------------------------------------

SELECT DISTINCT p.person_first_name AS FirstName
FROM person p;

-----------------------------------------------------------------
-- SELECT - Distinct combination of columns
-----------------------------------------------------------------

SELECT DISTINCT p.person_first_name, p.person_last_name
FROM person p;