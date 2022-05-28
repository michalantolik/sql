USE Contacts;

-----------------------------------------------------------------
-- WHERE Filtering ----------------------------------------------
-----------------------------------------------------------------

-- Special operators BL-III
-- 
-- LIKE    - value is like... (pattern matching)
-- BETWEEN - value lies within a range
-- IN      - value belongs to a set (shorthand for multiple equals)
-- IS      - value is NULL (equal operator for NULL)
-- IS NOT  - value is NOT NULL (not equal operator for NULL)

-- Simple

SELECT p.person_last_name as LastName
FROM person p
WHERE p.person_first_name = 'Jon';


-- AND

SELECT p.person_first_name,
p.person_last_name,
p.person_contacted_number
FROM person p
WHERE p.person_first_name = 'Jon'
AND p.person_last_name = 'Flanders';


-- OR

SELECT p.person_first_name,
p.person_last_name,
p.person_contacted_number
FROM person p
WHERE p.person_last_name = 'Flanders'
OR p.person_contacted_number > 0;


-- BETWEEN (inclusive)

SELECT p.person_first_name,
p.person_last_name,
p.person_contacted_number
FROM person p
WHERE p.person_contacted_number
BETWEEN 1 AND 20;


-- LIKE

SELECT p.person_first_name
FROM person p
WHERE p.person_first_name
LIKE '%o%';


-- IN

SELECT p.person_first_name
FROM person p
WHERE p.person_first_name
IN ('Jon', 'Fritz');


-- IS

SELECT a.address_city,
a.address_street
FROM address a
WHERE a.address_locality IS NULL;


-- IS NOT

SELECT a.address_city,
a.address_street
FROM address a
WHERE a.address_locality IS NOT NULL;