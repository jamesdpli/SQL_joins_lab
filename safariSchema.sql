-- MVP
-- Draw an entity relationship diagram to show the structure of the tables and the relationships between them. Each table should have enough columns to capture all the data shown in the JSON above. ✅
-- Set up the tables in a postgres database. You can set them up using the psql REPL, a GUI like Postico or PGAdmin or by writing an SQL file like the one in the previous task. ✅
-- Populate the tables with some of your own data (you don't need to use more cereal mascots, unless you want to). Don't worry about the capacity restriction on enclosures for now, checking the would be handled by the back-end before the data gets sent to the database. ✅
-- Write queries to find:
-- The names of the animals in a given enclosure
-- The names of the staff working in a given enclosure

DROP TABLE assignments;
DROP TABLE animals;
DROP TABLE employees;
DROP TABLE enclosures;

CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN
);

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY, 
    employee_id INT REFERENCES employees(id),
    enclosure_id INT REFERENCES enclosures(id),
    day VARCHAR(15)
);



-- Insert enclosure into enclosures table
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Big Cat Enclosure', 15, false);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Snake Enclosure', 10, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Bat Cave Enclosure', 20, true);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('Crocodile Enclosure', 25, false);

-- insert employee into employees table
INSERT INTO employees (name, employeeNumber) VALUES ('Jimmy', 111);
INSERT INTO employees (name, employeeNumber) VALUES ('Johnny', 222);
INSERT INTO employees (name, employeeNumber) VALUES ('Timmy', 333);
INSERT INTO employees (name, employeeNumber) VALUES ('Tammy', 444);

-- insert animal inst animals table
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 4, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Phil', 'Snake', 3, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Greg', 'Bat', 1, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Jona', 'Crocodile', 7, 4);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Kit', 'Tiger', 6, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Saf', 'Snake', 7, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('JJ', 'Bat', 2, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Julie', 'Crocodile', 9, 4);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Anne', 'Tiger', 9, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Vlad', 'Snake', 1, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Amy', 'Bat', 2, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Kate', 'Crocodile', 3, 4);

-- insert assignment into assignments table
INSERT INTO assignments (day, employee_id, enclosure_id) VALUES ('Monday', 1, 1);
INSERT INTO assignments (day, employee_id, enclosure_id) VALUES ('Tuesday', 2, 2);
INSERT INTO assignments (day, employee_id, enclosure_id) VALUES ('Wednesday', 3, 3);
INSERT INTO assignments (day, employee_id, enclosure_id) VALUES ('Thursday', 4, 4);
INSERT INTO assignments (day, employee_id, enclosure_id) VALUES ('Friday', 1, 2);
INSERT INTO assignments (day, employee_id, enclosure_id) VALUES ('Saturday', 2, 1);
INSERT INTO assignments (day, employee_id, enclosure_id) VALUES ('Sunday', 2, 3);
