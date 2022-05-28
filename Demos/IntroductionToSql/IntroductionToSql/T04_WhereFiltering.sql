USE Contacts;

-----------------------------------------------------------------------------
-- WHERE - AND operator
--
-- Ex1
--
-- Show [person_first_name, person_last_name, person_contacted_number]
-- ... for 'Jon Flanders'
-----------------------------------------------------------------------------

SELECT p.person_first_name,
p.person_last_name,
p.person_contacted_number
FROM person p
WHERE p.person_first_name = 'Jon'
AND p.person_last_name = 'Flanders';

-----------------------------------------------------------------------------
-- WHERE - BETWEEN operator
--
-- Ex2
--
-- Show [person_first_name, person_last_name, person_contacted_number]
-- ... for person_contacted_number >= 1 and <= 20
-----------------------------------------------------------------------------

SELECT p.person_first_name,
p.person_last_name,
p.person_contacted_number
FROM person p
WHERE p.person_contacted_number
BETWEEN 1 AND 20;

-----------------------------------------------------------------------------
-- WHERE - LIKE operator
--
-- Ex3
--
-- Show [person_first_name]
-- ... for persons with 'o' letter in their first name
-----------------------------------------------------------------------------

SELECT p.person_first_name
FROM person p
WHERE p.person_first_name LIKE '%o%';

-----------------------------------------------------------------------------
-- WHERE - IN operator
--
-- Ex4
--
-- Show [person_first_name]
-- ... for persons with first name of either 'Jon' or 'Fritz'
-----------------------------------------------------------------------------

SELECT p.person_first_name
FROM person p
WHERE p.person_first_name
IN ('Jon', 'Fritz');

-----------------------------------------------------------------------------
-- WHERE - IS NULL operator
--
-- Ex5
--
-- Show [address_city, address_street]
-- ... for addresses which HAVE NO [address_locality] defined
-----------------------------------------------------------------------------

SELECT a.address_city, a.address_street
FROM address a
WHERE a.address_locality IS NOT NULL;

-----------------------------------------------------------------------------
-- WHERE - IS NOT NULL operator
--
-- Ex6
--
-- Show [address_city, address_street]
-- ... for addresses which DO HAVE [address_locality] defined
-----------------------------------------------------------------------------

SELECT a.address_city, a.address_street
FROM address a
WHERE a.address_locality IS NULL;