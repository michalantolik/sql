USE Contacts;

-------------------------------------------------------------------------------
-- CROSS JOIN
--
-- Ex1
--
-- Show cartesian product of a [person] table and [email_adress] table
--
-- Show [p.person_first_name, e.email_address] columns
-------------------------------------------------------------------------------

SELECT p.person_first_name,
e.email_address
FROM
person p,
email_address e;

-------------------------------------------------------------------------------
-- INNER JOIN
--
-- Ex2
--
-- JOIN CONDITION: p.person_id = e.email_address_person_id
--
-- Show [p.person_first_name, p.person_last_name, e.email_address] columns
-------------------------------------------------------------------------------

SELECT p.person_first_name,
p.person_last_name,
e.email_address
FROM
person p
INNER JOIN
email_address e
ON p.person_id = e.email_address_person_id;

-------------------------------------------------------------------------------
-- LEFT OUTER JOIN
--
-- Ex3
--
-- JOIN CONDITION: p.person_id = e.email_address_person_id
--
-- Show [p.person_first_name, p.person_last_name, e.email_address] columns
-------------------------------------------------------------------------------

SELECT p.person_first_name,
p.person_last_name,
e.email_address
FROM
person p
LEFT OUTER JOIN
email_address e
ON p.person_id = e.email_address_person_id;

-------------------------------------------------------------------------------
-- RIGHT OUTER JOIN
--
-- Ex4
--
-- JOIN CONDITION: p.person_id = e.email_address_person_id
--
-- Show [p.person_first_name, p.person_last_name, e.email_address] columns
-------------------------------------------------------------------------------

SELECT p.person_first_name,
p.person_last_name,
e.email_address
FROM
person p
RIGHT OUTER JOIN
email_address e
ON p.person_id = e.email_address_person_id;


-------------------------------------------------------------------------------
-- FULL OUTER JOIN
--
-- Ex5
--
-- JOIN CONDITION: p.person_id = e.email_address_person_id
--
-- Show [p.person_first_name, p.person_last_name, e.email_address] columns
-------------------------------------------------------------------------------

SELECT p.person_first_name,
p.person_last_name,
e.email_address
FROM
person p
FULL OUTER JOIN
email_address e
ON p.person_id = e.email_address_person_id;