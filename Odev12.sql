-- 1
SELECT * FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2
SELECT * FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3
SELECT title FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) 
	AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;

-- 4
SELECT * FROM customer
WHERE customer_id = ANY 
(
SELECT customer_id FROM (SELECT customer_id, COUNT(*) AS counted FROM payment GROUP BY customer_id)
WHERE counted = (SELECT MAX(counted) FROM (SELECT COUNT(*) AS counted FROM payment GROUP BY customer_id))
);
