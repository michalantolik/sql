USE Contacts;

-----------------------------------------------------------------
-- ORDER BY Shaping ---------------------------------------------
-----------------------------------------------------------------

SELECT p.person_last_name as LastName
FROM person p
ORDER BY p.person_first_name;

-----------------------------------------------------------------
-- ORDER BY Shaping - With WHERE --------------------------------
-----------------------------------------------------------------

SELECT p.person_last_name as LastName
FROM person p
WHERE p.person_contacted_number > 0
ORDER BY p.person_first_name;

-----------------------------------------------------------------
-- COUNT - Number of table records ------------------------------
-----------------------------------------------------------------

SELECT COUNT(*)
FROM person p;

-----------------------------------------------------------------
-- MAX ----------------------------------------------------------
-----------------------------------------------------------------

SELECT
MAX(p.person_contacted_number)
FROM person p;

-----------------------------------------------------------------
-- MIN ----------------------------------------------------------
-----------------------------------------------------------------

SELECT
MIN(p.person_contacted_number)
FROM person p;

-----------------------------------------------------------------
-- SUM ----------------------------------------------------------
-----------------------------------------------------------------

SELECT
SUM(p.person_contacted_number)
FROM person p;

-----------------------------------------------------------------
-- AVG ----------------------------------------------------------
-----------------------------------------------------------------

SELECT
AVG(p.person_contacted_number)
FROM person p;

-----------------------------------------------------------------
-- COUNT + DISTINCT - Number of unique first names --------------
-----------------------------------------------------------------

SELECT
COUNT(DISTINCT(p.person_first_name))
FROM person p;


-----------------------------------------------------------------
-- GROUP BY + COUNT ---------------------------------------------
-----------------------------------------------------------------

SELECT
p.person_first_name,
COUNT(p.person_first_name) AS countDistict -- 2. then count is applied to each subset
FROM person p
GROUP BY p.person_first_name; -- 1. subsets are created first

-----------------------------------------------------------------
-- GROUP BY + COUNT + HAVING ------------------------------------
-----------------------------------------------------------------

SELECT
p.person_first_name,
COUNT(p.person_first_name) AS FirstNameCount -- 2. then count is applied to each subset
FROM person p
GROUP BY p.person_first_name -- 1. subsets are created first
HAVING p.person_first_name = 'Jon';

-----------------------------------------------------------------
-- GROUP BY + COUNT + HAVING ------------------------------------
-----------------------------------------------------------------

SELECT
p.person_first_name,
COUNT(p.person_first_name) AS countDistict -- 2. then count is applied to each subset
FROM person p
GROUP BY p.person_first_name -- 1. subsets are created first
HAVING COUNT(p.person_first_name) >= 1;