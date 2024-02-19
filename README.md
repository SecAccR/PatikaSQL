# PatikaSQL

## Odev 1
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
