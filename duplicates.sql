use chaitanya;
CREATE TABLE duplicate (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO duplicate VALUES
(1,'Amit','IT',70000),
(2,'Neha','HR',60000),
(3,'Amit','IT',70000),     -- duplicate
(4,'Rahul','Finance',80000),
(5,'Neha','HR',60000),     -- duplicate
(6,'Amit','IT',70000),     -- duplicate
(7,'Priya','IT',75000),
(8,'Rahul','Finance',80000), -- duplicate
(9,'Karan','HR',65000);

select*from duplicate;

 

#to find the duplicate
select name, department, count(*) from duplicate group by name, department ;

#to remove the duplicate values
DELETE FROM duplicate
WHERE id NOT IN (
    SELECT * FROM (
        SELECT MIN(id)
        FROM duplicate
        GROUP BY name, department
    ) AS t
);


