-- MVP 1
The names of the animals in a given enclosure
SELECT animals.name, enclosures.name 
FROM animals
INNER JOIN enclosures
ON enclosures.id = animals.enclosure_id
WHERE enclosures.id = 1;

-- MVP 2
-- The names of the staff working in a given enclosure
SELECT employees.name, enclosures.name
FROM employees
INNER JOIN assignments
ON employees.id = assignments.employee_id 
INNER JOIN enclosures
ON enclosures.id = assignments.enclosure_id
WHERE enclosures.id = 1;

-- Extentions 
-- The names of staff working in enclosures which are closed for maintenance
-- The name of the enclosure where the oldest animal lives. If there are two animals who are the same age choose the first one alphabetically.
-- The number of different animal types a given keeper has been assigned to work with.
-- The number of different keepers who have been assigned to work in a given enclosure
-- The names of the other animals sharing an enclosure with a given animal (eg. find the names of all the animals sharing the big cat field with Tony)