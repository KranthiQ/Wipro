create database librarydata;
USE librarydata;
CREATE TABLE loan (
    Student_ID INT,
    Name VARCHAR(30),
    Department VARCHAR(20),
    Year INT
);
INSERT INTO loan VALUES (101,'Amit','CSE',2),
                              (102,'Sneha','ECE',2),
                              (103,'Rahul','CSE',3),
							  (104,'Priya','EEE',1),
                              (105,'Kiran','ECE',3);
CREATE TABLE reference(
    Student_ID INT,
    Name VARCHAR(30),
    Department VARCHAR(20),
    Year INT
);
INSERT INTO reference VALUES (102,'Sneha','ECE',2),
                               (103,'Rahul','CSE',3),
                               (106,'Anjali','CSE',2),
                               (107,'Rohit','MECH',1),
							   (108,'Divya','ECE',2);
select name from loan
union
select name from reference;
select student_id from loan
union
select student_id from reference;
select year from loan
union all
select year from reference;
select * from loan
intersect
select * from reference;
select name from loan
intersect
select name from reference;
select name from loan
except
select name from reference;
SELECT Department, COUNT(*) AS Total_Students
FROM loan
GROUP BY Department;
SHOW TABLES;
SELECT * FROM loan;
SELECT Department, COUNT(*) AS Total_Students
FROM loan
GROUP BY Department
HAVING COUNT(*) > 1;



