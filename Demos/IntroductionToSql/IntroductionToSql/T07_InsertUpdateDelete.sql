USE Contacts;

-------------------------------------------------------------------------------
-- INSERT
--
-- Ex1
--
----------------------------------
-- Add a new person to [person]
----------------------------------
--
----------------------------------
-- Columns:
----------------------------------
--person.person_id,
--person.person_first_name,
--person.person_last_name,
--person.person_contacted_number,
--person.person_date_added,
--person_date_last_contacted
--
----------------------------------
-- Values:
----------------------------------
--200,
--'Jan',
--'Kowalski',
--4,
--GETDATE(),
--GETDATE()
-------------------------------------------------------------------------------

INSERT INTO person
(person.person_id,
person.person_first_name,
person.person_last_name,
person.person_contacted_number,
person.person_date_added,
person_date_last_contacted
)
VALUES
(
200,
'Jan',
'Kowalski',
4,
GETDATE(),
GETDATE()
);

-------------------------------------------------------------------------------
-- BULK INSERT
--
-- Ex2
--
----------------------------------
-- Add new persons to [person]
----------------------------------
--
----------------------------------
-- Columns:
----------------------------------
--person.person_id,
--person.person_first_name,
--person.person_last_name,
--person.person_contacted_number,
--person.person_date_added,
--person_date_last_contacted
--
----------------------------------
-- Values:
----------------------------------
--(201, 'Foo', 'Bar', 0, '2017-05-14 11:43:42', '2017-05-14 11:43:42'),
--(202, 'David', 'Copperfield', 0, '2018-02-13 09:35:12', '2018-02-13 09:35:12');
-------------------------------------------------------------------------------

INSERT INTO person
(person_id,
person_first_name,
person_last_name,
person_contacted_number,
person_date_last_contacted,
person_date_added
)
VALUES
(201, 'Foo', 'Bar', 0, '2017-05-14 11:43:42', '2017-05-14 11:43:42'),
(202, 'John', 'Rambo', 0, '2018-02-13 09:35:12', '2018-02-13 09:35:12');

-------------------------------------------------------------------------------
-- INSERT from another table
--
-- Ex3
--
-- Copy all rows from [old_person] to [person]
-------------------------------------------------------------------------------

INSERT INTO person
SELECT * FROM old_person;

-------------------------------------------------------------------------------
-- UPDATE
--
-- Ex4
--
-- Change [person_first_name] to 'Stasiek' for [person_id] = 99
-------------------------------------------------------------------------------

UPDATE person
SET
person.person_first_name = 'Stasiek'
WHERE
person.person_id = 200;

-------------------------------------------------------------------------------
-- UPDATE - alias [person] table as [p]
--
-- Ex5
--
-- Change [person_first_name] to 'Jan' for [person_id] = 200
-------------------------------------------------------------------------------

UPDATE p
SET
p.person_first_name = 'Jan'
FROM
person p
WHERE
p.person_id = 200;

-------------------------------------------------------------------------------
-- DELETE
--
-- Ex6
--
-- Delete person with [person_id] > 100
-------------------------------------------------------------------------------

DELETE FROM person
WHERE person.person_id > 100;
