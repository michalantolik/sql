USE Contacts;

-------------------------------------------------------------------------------
-- ORDER BY - without WHERE
--
-- Ex1
--
-- Show all [person_last_name] in ascending order
-------------------------------------------------------------------------------

SELECT p.person_last_name as LastName
FROM person p
ORDER BY p.person_first_name;

-------------------------------------------------------------------------------
-- ORDER BY - with WHERE
--
-- Ex2
--
-- Show [person_last_name] in ascending order
-- Show only persons who have [person_contacted_number] > 0
-------------------------------------------------------------------------------

SELECT p.person_last_name as LastName
FROM person p
WHERE p.person_contacted_number > 0
ORDER BY p.person_first_name;

-------------------------------------------------------------------------------
-- Set functions
--
-- Ex3
--
-- Show the number of all the persons
-------------------------------------------------------------------------------

SELECT COUNT(*)
FROM person p;

-------------------------------------------------------------------------------
-- Set functions
--
-- Ex4
--
-- Show the biggest value in [person_contacted_number] column
-------------------------------------------------------------------------------

SELECT
MAX(p.person_contacted_number)
FROM person p;

-------------------------------------------------------------------------------
-- Set functions
--
-- Ex5
--
-- Show the lowest value in [person_contacted_number] column
-------------------------------------------------------------------------------

SELECT
MIN(p.person_contacted_number)
FROM person p;

-------------------------------------------------------------------------------
-- Set functions
--
-- Ex6
--
-- Show the sum of all the values in [person_contacted_number] column
-------------------------------------------------------------------------------

SELECT
SUM(p.person_contacted_number)
FROM person p;

-------------------------------------------------------------------------------
-- Set functions
--
-- Ex7
--
-- Show the average of all te values in [person_contacted_number] column
-------------------------------------------------------------------------------

SELECT
AVG(p.person_contacted_number)
FROM person p;

-------------------------------------------------------------------------------
-- Set functions
--
-- Ex8
--
-- Show the number of all unique values in [person_first_name]
-------------------------------------------------------------------------------

SELECT
COUNT(DISTINCT(p.person_first_name))
FROM person p;

-------------------------------------------------------------------------------
-- GROUP BY
--
-- Ex9
--
-- Show all unique values of [person_first_name]
-------------------------------------------------------------------------------

SELECT
p.person_first_name
FROM person p
GROUP BY p.person_first_name; -- 1. subsets are created first

-------------------------------------------------------------------------------
-- GROUP BY
--
-- Ex10
--
-- Show all unique values of [person_first_name] and the count of each of them
-------------------------------------------------------------------------------

SELECT
p.person_first_name,
COUNT(p.person_first_name) AS countDistict -- 2. then count is applied to each subset
FROM person p
GROUP BY p.person_first_name; -- 1. subsets are created first

-------------------------------------------------------------------------------
-- GROUP BY + COUNT + HAVING
--
-- Ex11
--
-- Show [person_first_name, <count of rows with this name>] for a name of 'Jon'
-------------------------------------------------------------------------------

SELECT
p.person_first_name,
COUNT(p.person_first_name) AS FirstNameCount -- 2. then count is applied to each subset
FROM person p
GROUP BY p.person_first_name -- 1. subsets are created first
HAVING p.person_first_name = 'Jon';
