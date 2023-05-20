use sakila;
-- 1) Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name="Scarlett";
-- 2) Select all the actors with the last name ‘Johansson’
select * from actor
where last_name="Johansson";
-- 3) How many films (movies) are available for rent?
select count(inventory_id) from inventory;
-- 4) How many films have been rented?
select count(distinct title) from film
where rental_duration > 0;
-- 5) What is the shortest and longest rental period?
select max(rental_duration), min(rental_duration) from film;
-- 6) What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration, min(length) as min_duration from film;
-- 7) What's the average movie duration?
select avg(length) from film;
-- 8) What's the average movie duration expressed in format (hours, minutes)?
select CONCAT('1', ':', AVG(length)-60) AS fixed_time from film;
-- 9) How many movies longer than 3 hours?
select * from film
where length > 180;
-- 10) Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select *, concat(first_name, '.',last_name,'@sakilacustomer.org') as 'email_formatted' from customer;
-- 11) What's the length of the longest film title?
select max(length(title)) as 'longest film title' from film

