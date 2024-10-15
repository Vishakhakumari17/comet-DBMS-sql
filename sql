create database comet;

USE comet;

CREATE TABLE Student(
	Name VARCHAR(50),
    id INT,
    age INT
);

INSERT INTO Student
(Name, id,  age)
VALUES 
("Divya", 101, 21),
("chandu",102,  22),
("subham pandey", 103, 23),
("Jia", 104, 25),
("Riya" , 105, 23)
;


TRUNCATE TABLE Student;

alter table Student ADD
(country VARCHAR(30) DEFAULT "India");

alter table Student MODIFY id INT AFTER age;

alter table Student ADD
(
	course VARCHAR(20),
    session INT,
	cgpa FLOAT
);

alter table Student
 DROP column session;

TRUNCATE TABLE Student;

RENAME TABLE Student to Student_info; 

DROP TABLE Student_info; 

SHOW DATABASES;

SHOW TABLES;
DESCRIBE Student;

SHOW columns FROM Student;

INSERT INTO Student (id, name) VALUES
(106, 'Alice Williams'),
(107, 'Bob Martin');

UPDATE Student_info SET Name="Tara" WHERE id= 101;
SET SQL_SAFE_UPDATES = 0;

SELECT *FROM Student;
SELECT *FROM Student_info;

DELETE FROM Student WHERE  id= 101;


create table class(
	roll INT not null,
    Stu_name varchar(50)
);
INSERT INTO class VALUES(5, 'Rahul');
COMMIT;
UPDATE class SET Stu_name = 'Abhijit' WHERE roll = 5;

SAVEPOINT A;
INSERT INTO class VALUES(6, 'Rekha');
SAVEPOINT B;
INSERT INTO class VALUES(7, 'Lalit');
SAVEPOINT C;

select *from class;
ROLLBACK TO B;
TRUNCATE TABLE class;






SELECT *FROM Student_info WHERE score BETWEEN 70 AND 100;

SELECT *FROM Student_info WHERE join_date BETWEEN '2021-06-12' AND '2024-09-23';

SELECT *FROM Student_info WHERE id IN (101, 102);

SELECT *FROM Student_info WHERE id NOT IN (104, 103);

SELECT DISTINCT score FROM Student_info ;
show tables;



CREATE TABLE Emp(
	Eid INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary INT
);

SELECT salary FROM Emp ORDER BY salary DESC;

SELECT DISTINCT salary 
FROM Emp;

SELECT *FROM Emp
WHERE (age > 30 AND salary < 50000);
SELECT *FROM Emp
WHERE (age < 25 OR salary > 60000);

select *from Emp;

INSERT INTO Emp
VALUES
(201, "Atul", 34, 30000),
(202, "Muskan", 23, 67777),
(203,"Ram", 37, 900000),
(204, "Tina", 30, 900000);

-- 43
SELECT COUNT(name) from Emp WHERE salary=900000;

SELECT avg(salary) from Emp;

SELECT MIN(salary) from Emp;

SELECT MAX(salary) from Emp;

SELECT FIRST(salary) from Emp;

SELECT LAST(salary) from Emp;

SELECT SUM(salary) from Emp;

SELECT UCASE(name) from Emp;

SELECT LCASE(name) from Emp;

SELECT MID(name, 1, 6) from Emp;

SELECT ROUND(salary) from Emp;


-- 44-- 
CREATE TABLE users(
userId INT auto_increment PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(50)
);

-- 46
INSERT INTO users (username, email) 
VALUES ('john', 'john123@gmail.com'), 
       ('Mohan', 'mohan000@gmail.com');

SELECT * FROM users;


-- 47
CREATE TABLE Customers (
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Suppliers (
    SupplierName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);


INSERT INTO Suppliers (SupplierName, City, Country) 
VALUES ('ABC Corp', 'New York', 'USA'),
       ('xyz Ltd', 'Toronto', 'Canada'),
       ('Global Traders', 'Mumbai', 'India');


INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

SELECT * FROM Customers;


-- 49
CREATE TEMPORARY TABLE temp_emp (
    id INT,
    name VARCHAR(50)
);

INSERT INTO temp_emp (id, name) 
VALUES (1, 'piyush'), (2, 'naina');

SELECT * FROM temp_emp;

DROP TEMPORARY TABLE IF EXISTS temp_emp;



SELECT * 
FROM Customers 
WHERE Country = 'USA' AND City = 'New York';

SELECT * 
FROM Customers 
WHERE Country = 'USA' OR Country = 'Canada';

SELECT * 
FROM Customers 
WHERE Country IN ('USA', 'Canada', 'India');


SELECT * 
FROM Customers 
WHERE Country NOT IN ('USA', 'Canada');