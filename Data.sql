use project;

CREATE TABLE orderss (
    order_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2),
    payment_mode VARCHAR(20)
);

INSERT INTO orderss VALUES
(1, 101, 'Amit Sharma', 'Pune', 'Maharashtra', 'India', '2023-01-05', '2023-01-07', 1001, 'Laptop', 'Technology', 'Computers', 75000, 1, 0.10, 7500, 'Credit Card'),
(2, 102, 'Priya Singh', 'Mumbai', 'Maharashtra', 'India', '2023-02-10', '2023-02-12', 1002, 'Phone', 'Technology', 'Mobiles', 30000, 2, 0.05, 3000, 'UPI'),
(3, 103, 'Rahul Verma', 'Delhi', 'Delhi', 'India', '2023-03-15', '2023-03-18', 1003, 'Table', 'Furniture', 'Office', 15000, 1, 0.15, 2250, 'Cash'),
(4, 104, 'Sneha Patil', 'Pune', 'Maharashtra', 'India', '2023-04-01', '2023-04-03', 1004, 'Chair', 'Furniture', 'Office', 5000, 4, 0.20, 4000, 'Debit Card'),
(5, 105, 'Arjun Rao', 'Bangalore', 'Karnataka', 'India', '2023-05-20', '2023-05-22', 1005, 'Printer', 'Technology', 'Accessories', 12000, 1, 0.08, 960, 'UPI'),
(6, 106, 'Neha Gupta', 'Delhi', 'Delhi', 'India', '2023-06-10', '2023-06-12', 1006, 'Bookcase', 'Furniture', 'Home', 8000, 2, 0.12, 1920, 'Cash'),
(7, 107, 'Rohit Mehta', 'Mumbai', 'Maharashtra', 'India', '2023-07-25', '2023-07-28', 1007, 'Headphones', 'Technology', 'Accessories', 2000, 3, 0.05, 300, 'Credit Card'),
(8, 108, 'Kavya Nair', 'Bangalore', 'Karnataka', 'India', '2023-08-12', '2023-08-15', 1008, 'Monitor', 'Technology', 'Computers', 22000, 1, 0.10, 2200, 'UPI'),
(9, 109, 'Vikram Singh', 'Hyderabad', 'Telangana', 'India', '2023-09-03', '2023-09-05', 1009, 'Keyboard', 'Technology', 'Accessories', 3500, 2, 0.08, 560, 'Debit Card'),
(10, 110, 'Anjali Pandey', 'Pune', 'Maharashtra', 'India', '2023-10-14', '2023-10-17', 1010, 'Desk', 'Furniture', 'Office', 18000, 1, 0.12, 2160, 'Credit Card'),
(11, 111, 'Sanjay Kumar', 'Chennai', 'Tamil Nadu', 'India', '2023-11-08', '2023-11-10', 1011, 'Tablet', 'Technology', 'Mobiles', 25000, 1, 0.07, 1750, 'UPI'),
(12, 112, 'Riya Desai', 'Mumbai', 'Maharashtra', 'India', '2023-12-02', '2023-12-05', 1012, 'Shelf', 'Furniture', 'Home', 6000, 3, 0.15, 2700, 'Cash'),
(13, 113, 'Nikhil Bhat', 'Pune', 'Maharashtra', 'India', '2024-01-20', '2024-01-22', 1013, 'Mouse', 'Technology', 'Accessories', 1500, 4, 0.10, 600, 'Credit Card'),
(14, 114, 'Divya Rao', 'Bangalore', 'Karnataka', 'India', '2024-02-15', '2024-02-18', 1014, 'Cabinet', 'Furniture', 'Office', 12000, 2, 0.18, 4320, 'UPI'),
(15, 115, 'Ashok Singh', 'Delhi', 'Delhi', 'India', '2024-03-10', '2024-03-12', 1015, 'Laptop', 'Technology', 'Computers', 65000, 1, 0.12, 7800, 'Debit Card'),
(16, 116, 'Meera Joshi', 'Hyderabad', 'Telangana', 'India', '2024-04-05', '2024-04-08', 1016, 'Monitor', 'Technology', 'Computers', 20000, 1, 0.08, 1600, 'Cash'),
(17, 117, 'Prakash Yadav', 'Chennai', 'Tamil Nadu', 'India', '2024-05-12', '2024-05-14', 1017, 'Chair', 'Furniture', 'Office', 4500, 5, 0.20, 4500, 'Credit Card'),
(18, 118, 'Sunita Malik', 'Pune', 'Maharashtra', 'India', '2024-06-18', '2024-06-20', 1018, 'Phone', 'Technology', 'Mobiles', 32000, 1, 0.05, 1600, 'UPI'),
(19, 119, 'Arun Patel', 'Mumbai', 'Maharashtra', 'India', '2024-07-22', '2024-07-25', 1019, 'Headphones', 'Technology', 'Accessories', 2500, 2, 0.10, 500, 'Debit Card'),
(20, 120, 'Geeta Saxena', 'Bangalore', 'Karnataka', 'India', '2024-08-30', '2024-09-02', 1020, 'Table', 'Furniture', 'Home', 11000, 1, 0.15, 1650, 'Cash'),
(21, 121, 'Harjeet Kaur', 'Delhi', 'Delhi', 'India', '2024-09-14', '2024-09-16', 1021, 'Printer', 'Technology', 'Accessories', 14000, 1, 0.09, 1260, 'Credit Card'),
(22, 122, 'Manoj Verma', 'Pune', 'Maharashtra', 'India', '2024-10-08', '2024-10-10', 1022, 'Tablet', 'Technology', 'Mobiles', 27000, 1, 0.08, 2160, 'UPI'),
(23, 123, 'Pooja Sharma', 'Hyderabad', 'Telangana', 'India', '2024-11-11', '2024-11-14', 1023, 'Bookcase', 'Furniture', 'Home', 9000, 2, 0.12, 2160, 'Debit Card'),
(24, 124, 'Rajesh Menon', 'Mumbai', 'Maharashtra', 'India', '2024-12-05', '2024-12-08', 1024, 'Keyboard', 'Technology', 'Accessories', 4000, 2, 0.10, 800, 'Cash'),
(25, 125, 'Shruti Das', 'Chennai', 'Tamil Nadu', 'India', '2024-12-20', '2024-12-23', 1025, 'Desk', 'Furniture', 'Office', 16000, 1, 0.14, 2240, 'Credit Card'),
(26, 126, 'Vikram Thakur', 'Bangalore', 'Karnataka', 'India', '2025-01-10', '2025-01-12', 1026, 'Monitor', 'Technology', 'Computers', 19000, 1, 0.07, 1330, 'UPI'),
(27, 127, 'Isha Kapoor', 'Pune', 'Maharashtra', 'India', '2025-02-14', '2025-02-17', 1027, 'Phone', 'Technology', 'Mobiles', 31000, 1, 0.06, 1860, 'Debit Card'),
(28, 128, 'Deepak Singh', 'Delhi', 'Delhi', 'India', '2025-03-08', '2025-03-10', 1028, 'Chair', 'Furniture', 'Office', 5500, 3, 0.18, 2970, 'Cash'),
(29, 129, 'Nisha Gupta', 'Mumbai', 'Maharashtra', 'India', '2025-04-02', '2025-04-05', 1029, 'Laptop', 'Technology', 'Computers', 72000, 1, 0.11, 7920, 'Credit Card'),
(30, 130, 'Rohan Jain', 'Hyderabad', 'Telangana', 'India', '2025-05-15', '2025-05-17', 1030, 'Headphones', 'Technology', 'Accessories', 2200, 3, 0.08, 528, 'UPI'),
(31, 131, 'Seema Rao', 'Bangalore', 'Karnataka', 'India', '2025-06-20', '2025-06-23', 1031, 'Bookcase', 'Furniture', 'Home', 8500, 2, 0.13, 2210, 'Debit Card'),
(32, 132, 'Tushar Patel', 'Chennai', 'Tamil Nadu', 'India', '2025-07-12', '2025-07-14', 1032, 'Printer', 'Technology', 'Accessories', 13000, 1, 0.09, 1170, 'Cash'),
(33, 133, 'Varsha Singh', 'Pune', 'Maharashtra', 'India', '2025-08-25', '2025-08-28', 1033, 'Table', 'Furniture', 'Office', 14000, 1, 0.16, 2240, 'Credit Card'),
(34, 134, 'Waqar Ahmad', 'Mumbai', 'Maharashtra', 'India', '2025-09-18', '2025-09-20', 1034, 'Tablet', 'Technology', 'Mobiles', 26000, 1, 0.07, 1820, 'UPI'),
(35, 135, 'Xavier Pereira', 'Bangalore', 'Karnataka', 'India', '2025-10-30', '2025-11-02', 1035, 'Keyboard', 'Technology', 'Accessories', 3800, 2, 0.10, 760, 'Debit Card'),
(36, 136, 'Yara Khan', 'Delhi', 'Delhi', 'India', '2025-11-14', '2025-11-17', 1036, 'Shelf', 'Furniture', 'Home', 7000, 2, 0.14, 1960, 'Cash'),
(37, 137, 'Zainab Ali', 'Hyderabad', 'Telangana', 'India', '2025-12-08', '2025-12-10', 1037, 'Monitor', 'Technology', 'Computers', 21000, 1, 0.09, 1890, 'Credit Card'),
(38, 138, 'Abhinav Sinha', 'Mumbai', 'Maharashtra', 'India', '2025-12-22', '2025-12-25', 1038, 'Phone', 'Technology', 'Mobiles', 29000, 1, 0.08, 2320, 'UPI'),
(39, 139, 'Bhavna Pandey', 'Pune', 'Maharashtra', 'India', '2024-01-11', '2024-01-13', 1039, 'Mouse', 'Technology', 'Accessories', 1600, 4, 0.12, 768, 'Debit Card'),
(40, 140, 'Chirag Verma', 'Chennai', 'Tamil Nadu', 'India', '2024-02-20', '2024-02-23', 1040, 'Cabinet', 'Furniture', 'Office', 11000, 2, 0.17, 3740, 'Cash'),
(41, 141, 'Deepika Nair', 'Bangalore', 'Karnataka', 'India', '2024-03-28', '2024-03-30', 1041, 'Laptop', 'Technology', 'Computers', 68000, 1, 0.13, 8840, 'Credit Card'),
(42, 142, 'Eshan Kapoor', 'Delhi', 'Delhi', 'India', '2024-04-19', '2024-04-22', 1042, 'Chair', 'Furniture', 'Office', 4800, 4, 0.19, 3648, 'UPI'),
(43, 143, 'Fiona D\'Souza', 'Mumbai', 'Maharashtra', 'India', '2024-05-25', '2024-05-27', 1043, 'Headphones', 'Technology', 'Accessories', 2300, 2, 0.09, 414, 'Debit Card'),
(44, 144, 'Gaurav Srivastava', 'Hyderabad', 'Telangana', 'India', '2024-06-30', '2024-07-02', 1044, 'Tablet', 'Technology', 'Mobiles', 28000, 1, 0.10, 2800, 'Cash'),
(45, 145, 'Himani Yadav', 'Pune', 'Maharashtra', 'India', '2024-07-14', '2024-07-16', 1045, 'Table', 'Furniture', 'Home', 10000, 1, 0.15, 1500, 'Credit Card'),
(46, 146, 'Ishwar Reddy', 'Bangalore', 'Karnataka', 'India', '2024-08-09', '2024-08-12', 1046, 'Monitor', 'Technology', 'Computers', 18500, 1, 0.11, 2035, 'UPI'),
(47, 147, 'Jasmine Singh', 'Chennai', 'Tamil Nadu', 'India', '2024-09-19', '2024-09-22', 1047, 'Printer', 'Technology', 'Accessories', 11500, 1, 0.10, 1150, 'Debit Card'),
(48, 148, 'Kamal Gupta', 'Mumbai', 'Maharashtra', 'India', '2024-10-23', '2024-10-25', 1048, 'Phone', 'Technology', 'Mobiles', 33000, 1, 0.07, 2310, 'Cash'),
(49, 149, 'Leela Bhat', 'Delhi', 'Delhi', 'India', '2024-11-17', '2024-11-20', 1049, 'Keyboard', 'Technology', 'Accessories', 3200, 3, 0.12, 1152, 'Credit Card'),
(50, 150, 'Mohan Lal', 'Pune', 'Maharashtra', 'India', '2024-12-28', '2025-01-02', 1050, 'Bookcase', 'Furniture', 'Home', 9500, 2, 0.11, 2090, 'UPI');

# 1.Retrieve all records from the table
select * from orderss;

#2.Show only customer_name and city
select customer_name ,city from orderss;

#3.Find all orders from Pune
select product_name, city from orderss where city='Pune';

#4.Get all orders where sales > 10000
select product_name , sales from orderss where sales>1000 order by sales desc ; 

#5.Find all orders where payment_mode = 'UPI'
select product_name, payment_mode from orderss where payment_mode='UPI';

#6.Display unique cities
select distinct(city) from orderss;

#7.Sort data by sales in descending order
select * from orderss order by sales desc;

#8. Retrieve all orders placed in Maharashtra.
select product_name , state from orderss where state='Maharashtra';

#9. Show all customer names from Delhi.
select customer_name from orderss where state='Delhi';


#🟡 Intermediate Level

# 1 Count total number of orders
select count(*) from orderss;

# 2 Find total sales
select sum(sales) from orderss;

# 3 Find average profit
select round(avg(profit)) as avg from orderss;

# 4 Get total quantity sold per category
select sum(quantity) as sum, category from orderss group by category;


#5 Find highest sales value
select max(sales)  as max from orderss;

#6Get all orders between 2023-01-01 and 2023-06-30
select * from orderss;
select product_name as orders , ship_date from orderss where ship_date between '2023-01-01' and '2023-06-30';

#7Find customers whose name starts with 'A'
select customer_name from orderss where customer_name like 'A%';

#8Find top 3 highest sales orders
select sales from orderss order by sales desc limit 3;

#9Calculate total profit per city
select sum(profit) as profit , city from orderss group by city;

#10Find number of orders per payment mode
select product_name , payment_mode from orderss;

#11Show orders sorted by order_date from newest to oldest
select* from orderss;
select order_date from orderss order by order_date desc;

#12. Sort orders by discount_amount (highest to lowest).
select product_name , discount from orderss order by discount desc;

#13 Find most preferred payment mode in each city
select max(payment_mode) as payment_mode from orderss;

#🟢 UPDATE Queries Practice
#🔹 Basic

#1Update the city of customer 'Amit Sharma' to 'Mumbai'
select*from orderss;
update orderss set city='Mumbai' where customer_name='Amit Sharma';

#2Change payment_mode to 'UPI' where it is 'Cash'
select * from orderss;
update orderss set payment_mode='UPI' where payment_mode='Cash';

#3Increase sales by 10% for all products in 'Technology' category
select*from orderss;
update orderss set sales=sales*0.1+sales where category='Technology';

#4Update discount to 0.20 where quantity > 3
select*from orderss;
update orderss set discount=discount*0.20 where quantity>3;


#5Update profit by adding 500 where sales > 20000
update orderss set profit=profit+500 where sales>2000;

#6Reduce sales by 5% where discount > 0.10
update orderss set sales=sales*0.95 where discount>0.10;

#7Update ship_date to order_date + 2 days for all orders
select*from orderss;
UPDATE orderss
SET ship_date = order_date + INTERVAL 2 DAY;

#8Change payment_mode to 'Credit Card' for customers from Pune
select*from orderss;
update orderss set payment_mode='Credit Card' where city='Pune';

#9Update category to 'Electronics' where product_name = 'Phone'
select*from orderss;
update orderss set category='Electronic' where product_name='Phone';

#10Give 5% extra discount to top 3 highest sales orders
select *from orderss;
select round((sales *5 /100 +sales)) as sales from orderss orders order by sales desc limit 3;

#11 Update only the latest order of each customer
select *from orderss;
select customer_name, product_name,category, country, order_date from orderss order by order_date desc limit 1;


#🔴 DELETE Queries Practice
#🔹 Basic

#1Delete all records where city = 'Delhi'

/*create table em(id int , name varchar(100), salary int ) ;

insert into em values ( 1, 'chaitanya', 80000 ),(2,'Ram', 10000000),(3, 'sham',40000);
select* from em;

truncate table em;
show tables;
select* from em;

drop table em;
show tables;*/


#1 Delete all records where city = 'Delhi'
select*from orderss;
delete from orderss where city='Delhi';

#2.Delete orders where sales < 5000
delete from orders where sales<5000;

#3Delete records where payment_mode = 'Cash'
delete from orders where payment_mode='Cash';

#4Delete a specific order using order_id = 3
delete from orders where order_id=3;

#5Delete records where quantity = 1
select*from orderss;
delete from orderss where quantit=1;


#🟡 Intermediate
#basic

#1Delete all orders before '2023-03-01'
delete from orderss where order_date >'2023-03-01';

#2Delete records where profit < 1000
delete from orderss where profit<1000;

#3Delete all Furniture category orders
select*from orderss;
delete from orderss where  category='Furniture';

#4Delete customers whose name starts with 'R'
delete from orderss where customer_name like '%r';

#5Delete duplicate records (important interview question 🔥)
SELECT category, sub_category, COUNT(*)
FROM orderss
GROUP BY category, sub_category
HAVING COUNT(*) >1;

select count(*) as count from orderss having count(*) >1;

select*from orderss;

delete t1
from orderss t1 
join orderss t2
on t1.customer_id=t2.customer_id
and t1.product_id=t2.product_id
and t1.order_id=t2.order_id;
