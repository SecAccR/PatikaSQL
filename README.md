# PatikaSQL

## Odev1
```sql
-- 1
SELECT title, description FROM film;

-- 2
SELECT title, description FROM film
WHERE length > 60 AND length < 75;

-- 3
SELECT * FROM film
WHERE rental_rate = 0.99 AND replacement_cost = 12.99 OR replacement_cost = 28.99;

-- 4
SELECT * FROM customer
WHERE first_name = 'Mary';

-- 5
SELECT title, length, rental_rate FROM film
WHERE length < 51 AND rental_rate != 2.99 AND rental_rate != 4.99;
```

## Odev2
```sql
-- 1
SELECT * FROM film
WHERE replacement_cost BETWEEN 13.00 AND 16.98;

-- 2
SELECT first_name, last_name FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

-- 3
SELECT * FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);
```

## Odev3
```sql
-- 1
SELECT * FROM country
WHERE country LIKE 'A%a';

-- 2
SELECT * FROM country
WHERE country LIKE '_____%n';

-- 3
SELECT title FROM film
WHERE title ILIKE '%t%t%t%t%';

-- 4
SELECT title, length, rental_rate FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
```

## Odev4
```sql
-- 1
SELECT DISTINCT replacement_cost FROM film;

-- 2
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- 3
SELECT title, rating FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4
SELECT COUNT(*) from country
WHERE country LIKE '_____';

-- 5
SELECT COUNT(*) FROM city
WHERE city ILIKE '%r';
```
## Odev5
```sql
-- 1
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- 2
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY length
OFFSET 5
LIMIT 5;

-- 3
SELECT * FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
```
## Odev6
```sql
-- 1
SELECT ROUND(AVG(rental_rate), 2) FROM film;

-- 2
SELECT COUNT(*) FROM film
WHERE title LIKE 'C%';

-- 3
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

-- 4
SELECT COUNT(DISTINCT(replacement_cost)) FROM film
WHERE length > 150;
```
## Odev7
```sql
-- 1
SELECT rating, COUNT(*) FROM film
GROUP BY rating
ORDER BY rating;

-- 2
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY replacement_cost;

-- 3
SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id
ORDER BY store_id;

-- 4
SELECT country_id, COUNT(city) FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;

-- 4.1
SELECT MAX(count) FROM (
	SELECT country_id, COUNT(city) AS count FROM city
	GROUP BY country_id);
```
