USE Contacts;

-----------------------------------------------------------------
-- INSERT INTO --------------------------------------------------
-----------------------------------------------------------------

INSERT INTO person
(person_id,
person_first_name,
person_last_name,
person_contacted_number,
person_date_last_contacted,
person_date_added
)
VALUES
(4, 'Foo', 'Bar', 0, '2017-05-14 11:43:42', '2017-05-14 11:43:42');

-----------------------------------------------------------------
-- BULK INSERT INTO - Multiple values lists ---------------------
-----------------------------------------------------------------

INSERT INTO person
(person_id,
person_first_name,
person_last_name,
person_contacted_number,
person_date_last_contacted,
person_date_added
)
VALUES
(4, 'Foo', 'Bar', 0, '2017-05-14 11:43:42', '2017-05-14 11:43:42'),
(5, 'John', 'Rambo', 0, '2018-02-13 09:35:12', '2018-02-13 09:35:12');

-----------------------------------------------------------------
-- BULK INSERT INTO - values come from SELECT statement ---------
-----------------------------------------------------------------

INSERT INTO
person p
SELECT *
FROM old_person op
WHERE op.person_id > 300;

-----------------------------------------------------------------
-- UPDATE -------------------------------------------------------
-----------------------------------------------------------------

UPDATE person
SET
person.person_first_name = 'Bob',
person.person_last_name = 'Foo'
WHERE
person.person_id = 0;

-----------------------------------------------------------------
-- UPDATE - With table alias ------------------------------------
-----------------------------------------------------------------

UPDATE p
SET
p.person_first_name = 'Bob',
p.person_last_name = 'Foo'
FROM
person p
WHERE
p.person_id = 0;

-----------------------------------------------------------------
-- DELETE - No WHERE clause - BAD PRACTICE!!! -------------------
-----------------------------------------------------------------

DELETE FROM person p;

-----------------------------------------------------------------
-- DELETE - WHERE clause present - GOOD PRACTICE!!! -------------
-----------------------------------------------------------------

DELETE FROM person p
WHERE p.id = 5;
