show databases;
use chaitanya;

CREATE TABLE emmp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30),
    joining_year INT
);


INSERT INTO emmp VALUES
(101, 'Amit', 'Male', 28, 'IT', 60000, 'Pune', 2021),
(102, 'Neha', 'Female', 32, 'HR', 45000, 'Mumbai', 2019),
(103, 'Rahul', 'Male', 30, 'Finance', 70000, 'Delhi', 2018),
(104, 'Sneha', 'Female', 26, 'IT', 55000, 'Pune', 2022),
(105, 'Karan', 'Male', 35, 'HR', 50000, 'Mumbai', 2017),
(106, 'Priya', 'Female', 29, 'Finance', 75000, 'Delhi', 2020),
(107, 'Arjun', 'Male', 31, 'IT', 65000, 'Bangalore', 2019),
(108, 'Anjali', 'Female', 27, 'Marketing', 48000, 'Chennai', 2021),
(109, 'Vikram', 'Male', 40, 'Finance', 90000, 'Delhi', 2015),
(110, 'Meera', 'Female', 33, 'IT', 72000, 'Pune', 2018),
(111, 'Rohit', 'Male', 29, 'Marketing', 52000, 'Chennai', 2020),
(112, 'Pooja', 'Female', 36, 'HR', 58000, 'Mumbai', 2016),
(113, 'Sahil', 'Male', 25, 'IT', 50000, 'Bangalore', 2023),
(114, 'Nisha', 'Female', 34, 'Finance', 80000, 'Delhi', 2017),
(115, 'Dev', 'Male', 38, 'Marketing', 62000, 'Chennai', 2016);

select*from emmp;


## **1️⃣ Find all employees from IT department**
SELECT * 
FROM emmp
WHERE department = 'IT';

## **2️⃣ Find employees with salary greater than 60000**
SELECT emp_name, salary
FROM emmp
WHERE salary > 60000;

## **3️⃣ Count total employees in each department**
SELECT department, COUNT(*) AS total_employees
FROM emmp
GROUP BY department;

## **4️⃣ Find average salary by department**
SELECT department, AVG(salary) AS avg_salary
FROM emmp
GROUP BY department;

## **5️⃣ Find highest salary in each department**
SELECT department, MAX(salary) AS max_salary
FROM emmp
GROUP BY department;

## **6️⃣ Find employees who joined after 2020**
SELECT emp_name, joining_year
FROM emmp
WHERE joining_year > 2020; 

## **7️⃣ Find total salary paid in each city**
SELECT city, SUM(salary) AS total_salary
FROM emmp
GROUP BY city;

## **8️⃣ Find employees whose age is between 30 and 40**
SELECT emp_name, age
FROM emmp
WHERE age BETWEEN 30 AND 40;

## **9️⃣ Find the second highest salary**
SELECT MAX(salary) 
FROM emmp
WHERE salary < (SELECT MAX(salary) FROM emmp)

## **🔟 Find employees earning more than average salary**
SELECT emp_name, salary
FROM emmp
WHERE salary > (SELECT AVG(salary) FROM emmp);

## **1️⃣1️⃣ Find number of male and female employees**
SELECT gender, COUNT(*) AS total
FROM emmp
GROUP BY gender;

## **1️⃣2️⃣ Find employees from Pune with salary > 60000**
sql
SELECT emp_name, salary
FROM emmp
WHERE city = 'Pune' AND salary > 60000;



## **1️⃣3️⃣ Find department with highest average salary**
SELECT department
FROM emmp
GROUP BY department
ORDER BY AVG(salary) DESC
LIMIT 1;

---

## 1️⃣4️⃣ Rank employees based on salary (highest first)**
sql
SELECT emp_name, salary,
       RANK() OVER (ORDER BY salary DESC) AS rank
FROM emmp;

---

## **1️⃣5️⃣ Find highest paid employee in each department**
sql
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY department 
               ORDER BY salary DESC
           ) AS rn
    FROM emmp
) t
WHERE rn = 1;


#Find employees who work in IT department.
select*from emmp where  department='IT';
select emp_name , department from emmp where department="IT";

#Find employees whose salary is greater than 70000.
select* from emmp where salary>70000;

#Find employees from Delhi city.
select emp_name ,city from emmp where city="Delhi";

#Find employees whose age is between 25 and 30.
select*from emmp where age between 25 and 30; 

#Find employees who joined after 2019.
select*from emmp where joining_year>2019;

#Find female employees working in HR.
select*from emmp where gender="Female";

#Find employees whose salary is between 50000 and 80000.
select*from emmp where salary between 50000 and 80000;

#Find employees not working in Finance department.
select*from emmp where department!="Finance";

#Find employees whose name starts with 'A'
select*from emmp where emp_name like 'A%';

#Find employees from Pune with salary greater than 60000.
select city="Pune" from emmp where salary>60000; 

select*from emmp where city="Pune" and salary>60000; 

#to find the largest salary


select*from emmp order by salary desc limit 1;
select*from emmp order by salary desc limit 1  offset 3;


select*from emmp where salary=(select max(salary) from emmp  where salary <(select max(salary) from emmp));


select*from emmp order by salary desc limit 1 offset 2;


###### PRACTICING THE HAVING CLAUSE
#Find departments where average salary is greater than 60000.
select*from emmp having salary>60000;

#Find departments having more than 3 employees.
select*from emmp group by department having emp_name>3;

select department, count(*) as emp from emmp group by department having emp>3;




#Find cities where total salary paid is greater than 150000.
select city from emmp where salary>15000;

select city , sum(salary) as tot from emmp group by city having tot>150000;

#Find departments where maximum salary is above 80000.
select department , sum(salary) as s from emmp group by department having s>80000;

#Find departments where minimum salary is less than 50000.
select department, sum(salary) as ss from emmp group by department having ss<500000;

#Find joining_year groups where employee count is more than 2.
select joining_year , count(*) as p from emmp group by joining_year having p>1;


#Find departments where average age is greater than 30.
select department ,avg(age) as aa from emmp group by department having aa>30;


#Find cities having more than 2 female employees.
select city , count(*) as cc from emmp where gender="Male"  group by city having  cc>1;

CREATE TABLE empaa (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(2),
    gender VARCHAR(10));
INSERT INTO empaa VALUES
(101, 'Amit', 'Male');

CREATE TABLE Eaaa (
    emp_id int,
    emp_name VARCHAR(20),
    gender VARCHAR(10));
    
insert into Eaaa(emp_id,emp_name,gender) values(3,"Chaitanya","Male");



#################################
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    order_date DATE
);

INSERT INTO Orders (order_id, customer_id, order_date)
VALUES
(201, 1, '2024-02-15'),
(202, 2, '2024-02-10'),
(203, 1, '2024-02-18'),
(204, 3, '2024-02-20'),
(205, 1, '2024-02-25'),
(206, 2, '2024-02-27'),
(207, 1, '2024-03-02');

select*from Orders;

#
select customer_id ,count(order_id) as o from customer group by customer_id having o>5;
 
SELECT customer_id, COUNT(order_id) AS o
FROM customer
GROUP BY customer_id
HAVING COUNT(order_id) > 5;
