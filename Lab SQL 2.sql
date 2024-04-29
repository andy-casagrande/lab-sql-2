-- Lab | SQL 2
-- 1. Select all the actors with the first name ‘Scarlett’.alter
SELECT *
FROM SAKILA.ACTOR
WHERE FIRST_NAME = 'SCARLETT';
-- 2. Select all the actors with the last name ‘Johansson’.
SELECT *
FROM SAKILA.ACTOR
WHERE LAST_NAME = 'Johansson';

-- 3.How many films (movies) are available for rent?
SELECT COUNT(FILM_ID)
FROM SAKILA.INVENTORY;

-- 4. How many films have been rented?
-- 5. What is the shortest and longest rental period?

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MAX(LENGTH) AS max_duration, MIN(LENGTH) AS min_duration
FROM SAKILA.FILM;

-- 7. What's the average movie duration?
SELECT AVG(LENGTH)
FROM SAKILA.FILM;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT SEC_TO_TIME(AVG(LENGTH)*60) as AVG_HOURS
FROM SAKILA.FILM;

 -- 9. How many movies longer than 3 hours?
SELECT COUNT(LENGTH)
FROM SAKILA.FILM
WHERE LENGTH > 180;

-- 10.Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- 11. What's the length of the longest film title?
SELECT MAX(LENGTH(TITLE))
FROM SAKILA.FILM;


