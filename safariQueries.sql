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
