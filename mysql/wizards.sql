-- Create a database called wizards. The rest of the assesment all will take place in the wizards db.
-- Create a table called wizards with the following columns (name, age).

CREATE TABLE wizards(
id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
name text,
age integer);

-- Write a statement to count the number of rows in the wizards table. How many wizards are there?

SELECT id, count("id") as "number_of_times"
FROM wizards;

  -- There are 0 wizards

-- Insert a wizard into the database.

INSERT INTO wizards (name, age)
value ("nisha",28);

-- Write a statement to count the number of rows in the wizards table. How many wizards are there now?

SELECT id, count("id") as "number_of_times"
FROM wizards;

  -- There is 1 wizard

-- Insert another wizard into the database.

INSERT INTO wizards (name, age)
value ("derek",27);

-- Write a statement to change the second wizards age to 21.

UPDATE wizards
SET age= 21
WHERE id=2;

-- Write a statement to change all wizards ages to 40.

UPDATE wizards
SET age= 21;

-- Write a statement to delete the last wizard.

DELETE FROM wizards
ORDER BY id DESC limit 1;

-- Write a statement to delete the wizards table.

DROP TABLE wizards;


-- Create two data models for wizards. The wizards are going to have a name, an age and two powers each. Let's pretend we're in a world where wizards have many powers, but powers belong to one wizard (two wizards cant have the same power) Each power is going to have a name and a damage amount. Write out the sql to create the two schemas and some sample records. What are the costs/benefits of the two approaches? If you only see one way of doing this that's ok. Please explain any potential problems with your approach. What questions can this schema answer easily? What questions can this schema not answer easily?

-- Retrieve all the wizards with powers that have the letter "l" in them.

-- Retrieve all the wizards who have a combined damage of 10 or more.

-- Retrieve all the wizards sorted by their total damage. Your returned data should look like so.. wizard_name, total_damage.

-- Create a wizard that has no powers.

-- Retrieve all wizards that have no powers.

-- Create a data model for wizards for a world where wizards have many powers and multiple wizards can have the same power. Create some sample records.

-- Retrieve the first wizard and any powers he/she has with damage greater than 5.

-- What's the difference between an outer and inner join?

-- If I just write JOIN, is that an inner or outer join?

-- When would I want to use an outer join?