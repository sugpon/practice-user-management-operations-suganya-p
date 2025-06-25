-- insert statement to add users to our users table
INSERT INTO users (username, firstName, lastName, age)
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 
 -- select statement to verify that the data was inserted correctly
SELECT 
    *
FROM
    users;
 
 -- Updating data in a table
UPDATE users 
SET 
    firstName = 'Jane',
    lastName = 'Doe'
WHERE
    username = 'jdoe';
 
 
UPDATE users 
SET 
    firstName = 'Jane'
WHERE
    lastName = 'Doe';
 
 
 -- deleting from a table
DELETE FROM users 
WHERE
    username = 'jdoe';
 
 -- Retrieving using conditonals
SELECT 
    firstName, lastName
FROM
    users
WHERE
    lastName = 'Doe';
 
SELECT 
    *
FROM
    users
WHERE
    lastName = 'Doe' AND firstName = 'John';
 
SELECT 
    *
FROM
    users
WHERE
    lastName = 'Doe' OR firstName = 'John';
 
SELECT 
    *
FROM
    users
WHERE
    lastName = 'Doe'
        AND NOT firstName = 'John';
 
SELECT 
    *
FROM
    users
WHERE
    lastName = 'Doe'
        AND (firstName = 'John' OR firstName = 'Jane');
 
 
 -- Creating Aliases
SELECT 
    firstName AS First, lastName AS Last
FROM
    users;
 
 
 -- Calculated Fields
SELECT 
    username, age + 10 AS ageIn10Years
FROM
    users;
 
 
 -- String Operations on fields of a table
SELECT 
    CONCAT(firstName, ' ', lastName) AS fullName
FROM
    users;
 
 
 -- sorting with order by
SELECT 
    *
FROM
    users
ORDER BY age DESC;
 
SELECT 
    *
FROM
    users
ORDER BY lastName ASC , firstName ASC;
 
-- limiting the number of rows returned with limit
SELECT 
    *
FROM
    users
LIMIT 5;
 
SELECT 
    *
FROM
    users
LIMIT 5 OFFSET 5;
 
  -- Paging with limit, offset and order by
SELECT 
    *
FROM
    users
ORDER BY lastName ASC
LIMIT 10 OFFSET 20;
 
 