INSERT INTO users (username, firstName, lastName, age)
VALUES
('jdoe', 'John', 'Doe', 35), 
('asmith', 'Alice', 'Smith', 44),
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
 
-- Seeing the entire table 
 SELECT * FROM users;
 
 -- Changing the first name to 'Jane' for users with lastName 'Doe' where the username is 'jdoe'
 UPDATE users SET firstName='Jane', lastName = 'Doe' WHERE username = 'jdoe';
 
  -- Changing the first name to 'Jane' where lastName 'Doe'
 UPDATE users SET firstName = 'Jane' WHERE lastName = 'Doe';
 
 -- Delete entries with username 'jdoe' 
 DELETE FROM users WHERE username = 'jdoe';
 
-- sort table to show only data with username 'tkim'
SELECT * FROM users WHERE username = 'tkim';

-- sort table to show users with age above 30 
SELECT * FROM users WHERE age > 30;

-- sort table to show first and last names of users with lastName 'Doe'
SELECT firstName, lastName FROM users WHERE lastName = 'Doe';

-- sort table to show only users with last name 'Doe' and first name 'John' 
SELECT * FROM users WHERE lastName = 'Doe' AND firstName = 'John';

--  sort table to show only users with last name 'Doe' or first name 'John'
SELECT * FROM users WHERE lastName = 'Doe' OR firstName = 'John';

--  sort table to show only users with last name 'Lee' or first name 'John'
SELECT * FROM users WHERE lastName = 'Lee' OR firstName = 'John';

--  sort table to show only users with last name 'Doe' and first name not 'John'
SELECT * FROM users WHERE lastName = 'Doe' AND NOT firstName = 'John';

--  sort table to show only users with last name 'Doe' and first name either 'John' or 'Jane'
SELECT * FROM users WHERE lastName = 'Doe' AND (firstName = 'John' OR firstName = 'Jane');

-- show table with firstName and lastName renamed First and Last respectively 
SELECT firstName AS First, lastName AS Last FROM users;

-- show username column and a new column called ageIn10Yerars where 10 is added to the user ages
SELECT username, age + 10 AS ageIn10Years FROM users;

-- Combine first and last names into a new column called fullName
SELECT concat(firstName, '', lastName) AS fullName FROM users;

-- sort table by age in descending order 
SELECT * FROM users ORDER BY age DESC;

-- a new column called ageIn10Years created 
UPDATE users SET ageIn10Years = age + 10;

-- Order users by last name in ascending order and if there are two identical last names order by first name in ascending order 
SELECT * FROM users ORDER BY lastName ASC, firstName ASC;

-- Show the first 5 entries of the users table
SELECT * FROM users LIMIT 5;

-- Show the next 5 entries of the users table 
SELECT * FROM users LIMIT 5 OFFSET 5;

--  order the entries from 21 to 30 by last name in ascending order
SELECT * FROM users ORDER BY lastName ASC LIMIT 10 OFFSET 20;