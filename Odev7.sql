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
