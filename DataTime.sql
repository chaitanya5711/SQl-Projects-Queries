use chaitanya;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY,
  title VARCHAR(255),
  release_date DATE
);

INSERT INTO movies (id, title, release_date)
VALUES
  (1, 'The Shawshank Redemption', '1994-10-14'),
  (2, 'The Godfather', '1972-03-24'),
  (3, 'The Godfather: Part II', '1974-12-20'),
  (4, 'The Dark Knight', '2008-07-18'),
  (5, '12 Angry Men', '1957-04-10'),
	(6, 'The Godfather: Part III', '1990-12-25'),
  (7, 'Pulp Fiction', '1994-10-14'),
  (8, 'The Lord of the Rings: The Fellowship of the Ring', '2001-12-19'),
  (9, 'The Dark Knight Rises', '2012-07-20'),
  (10, 'The Lion King', '1994-06-15'),
	(11, 'Forrest Gump', '1994-07-06'),
  (12, 'The Silence of the Lambs', '1991-02-14'),
  (13, 'Jurassic Park', '1993-06-11'),
  (14, 'Titanic', '1997-12-19'),
  (15, 'The Matrix', '1999-03-31'),
  (16, 'The Avengers', '2012-05-04'),
  (17, 'La La Land', '2016-12-09'),
  (18, 'Joker', '2019-10-04'),
  (19, 'Inception', '2010-07-16'),
  (20, 'The Social Network', '2010-10-01');
  
  
  select*from movies;
  
  #find the current date
  select current_date;
  
#finding current timestamp
select current_timestamp();
  
#find the current time
select current_time;

#find local time
select localtime;
select localtimestamp , current_timestamp;


#age
select age(current_date ,'1994-12-12'); #not used in mysql
SELECT TIMESTAMPDIFF(YEAR, '1994-12-12', CURDATE()) AS age;
select timestampdiff(year, '2004-05-03' , CURDATE()) as age;
select age('1994-01-09' , '2004-05-03');

#extract
SELECT EXTRACT(YEAR FROM current_date);
select extract(day from current_date);
select extract(Month from current_date);
select extract(hour from current_date);

select extract(hour from current_time);
select extract(second from current_time);
select extract(minute from current_time);

#extract year from '2025-03-20'
SELECT EXTRACT(YEAR FROM '1993-11-12');

select cast('2025-11-17' as date);


#Write a query to find all movies that were released in the month April.
select title from movies where month(release_date)=3;

#Write a query to find the title and release date of all movies released in the last 10 years.
select title , release_date from movies where year(release_date)<current_date;
SELECT title, release_date
FROM movies
WHERE release_date >= CURDATE() - INTERVAL 10 YEAR;

#Write a query to find the title and release date of all movies that were released on a Friday.
select title , release_date from movies where dayname(release_date)='Friday';

#Write a query to find all movies that were released in the year 1972.
select title from movies where year(release_date)=1972;

#Write a query to find the title and release date of all movies released in the last 5 years.
select title , release_date from movies where release_date>= curdate()- interval 7 year;

#Write a query to find top 5 title and release date of all movies that were released on a Friday.
select title from movies where dayname(release_date)='Friday' limit 5;

#How many years, months, or days old is someone born on June 16, 2003
select timestampdiff(year, '2003-06-16', curdate())as age;


#for interval there is new file
