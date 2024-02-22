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
## Odev8
```sql
-- 1
CREATE TABLE employee (
	id INTEGER PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);

-- 2
insert into employee (id, name, email, birthday) values (1, 'Randie Henrichsen', 'rhenrichsen0@businessweek.com', '1985-08-13');
insert into employee (id, name, email, birthday) values (2, 'Sileas Ivetts', 'sivetts1@wiley.com', '1974-07-27');
insert into employee (id, name, email, birthday) values (3, 'Noellyn Linguard', null, null);
insert into employee (id, name, email, birthday) values (4, 'Oby Tapscott', 'otapscott3@t.co', '1937-09-19');
insert into employee (id, name, email, birthday) values (5, 'Addy Cotilard', 'acotilard4@miibeian.gov.cn', '1996-05-21');
insert into employee (id, name, email, birthday) values (6, 'Isis Hambribe', null, '1996-10-10');
insert into employee (id, name, email, birthday) values (7, 'Collin Sked', 'csked6@ezinearticles.com', '1953-10-22');
insert into employee (id, name, email, birthday) values (8, 'Zuzana Yurevich', 'zyurevich7@theguardian.com', '1910-12-10');
insert into employee (id, name, email, birthday) values (9, 'Eunice Lethlay', 'elethlay8@ted.com', '1965-08-16');
insert into employee (id, name, email, birthday) values (10, 'Maurise Blaksley', null, '1947-04-22');
insert into employee (id, name, email, birthday) values (11, 'Laurent Evesque', 'levesquea@posterous.com', '1966-09-12');
insert into employee (id, name, email, birthday) values (12, 'Norah Vidyapin', 'nvidyapinb@trellian.com', '1999-04-12');
insert into employee (id, name, email, birthday) values (13, 'Ginnifer Karlqvist', 'gkarlqvistc@ibm.com', '1936-10-01');
insert into employee (id, name, email, birthday) values (14, 'Hewet Cathee', null, '1983-09-18');
insert into employee (id, name, email, birthday) values (15, 'Rhea Rawe', 'rrawee@smh.com.au', '1971-12-23');
insert into employee (id, name, email, birthday) values (16, 'Karry Manklow', 'kmanklowf@ed.gov', '1916-03-27');
insert into employee (id, name, email, birthday) values (17, 'Christoforo Pinches', 'cpinchesg@youtu.be', '1949-01-02');
insert into employee (id, name, email, birthday) values (18, 'Morganica Norval', 'mnorvalh@blogs.com', '1956-10-22');
insert into employee (id, name, email, birthday) values (19, 'Melony Readmire', 'mreadmirei@washingtonpost.com', null);
insert into employee (id, name, email, birthday) values (20, 'Gus Masson', 'gmassonj@google.it', '1996-09-13');
insert into employee (id, name, email, birthday) values (21, 'Kara-lynn Ilchenko', 'kilchenkok@purevolume.com', '1941-10-04');
insert into employee (id, name, email, birthday) values (22, 'Marianna Sweeting', 'msweetingl@symantec.com', '1992-09-08');
insert into employee (id, name, email, birthday) values (23, 'Maxy de Savery', 'mdem@omniture.com', '1906-01-29');
insert into employee (id, name, email, birthday) values (24, 'Ginevra MacRinn', 'gmacrinnn@wikipedia.org', '2000-08-02');
insert into employee (id, name, email, birthday) values (25, 'Berny Befroy', 'bbefroyo@meetup.com', '1979-08-01');
insert into employee (id, name, email, birthday) values (26, 'Kaila Horley', 'khorleyp@nymag.com', '1913-04-11');
insert into employee (id, name, email, birthday) values (27, 'Mollee Prosch', 'mproschq@360.cn', '1969-04-01');
insert into employee (id, name, email, birthday) values (28, 'Cassondra Lakes', 'clakesr@mapy.cz', '1972-10-31');
insert into employee (id, name, email, birthday) values (29, 'Idelle Kivlin', 'ikivlins@skyrock.com', '1981-11-14');
insert into employee (id, name, email, birthday) values (30, 'Gae Spinella', 'gspinellat@blinklist.com', '1974-11-07');
insert into employee (id, name, email, birthday) values (31, 'Malory Pirnie', 'mpirnieu@imgur.com', '1926-12-29');
insert into employee (id, name, email, birthday) values (32, 'Ari Grece', 'agrecev@nifty.com', '1952-03-16');
insert into employee (id, name, email, birthday) values (33, 'Olympia Aucoate', 'oaucoatew@gizmodo.com', '1960-01-13');
insert into employee (id, name, email, birthday) values (34, 'Inglebert Brine', null, '1932-06-11');
insert into employee (id, name, email, birthday) values (35, 'Ofelia Hayth', 'ohaythy@tripadvisor.com', null);
insert into employee (id, name, email, birthday) values (36, 'Mathe Fairbridge', null, '1916-09-16');
insert into employee (id, name, email, birthday) values (37, 'Dana Hawthorn', 'dhawthorn10@theglobeandmail.com', null);
insert into employee (id, name, email, birthday) values (38, 'Hedy Banville', 'hbanville11@intel.com', '1948-07-14');
insert into employee (id, name, email, birthday) values (39, 'Di Sowray', null, '1976-12-26');
insert into employee (id, name, email, birthday) values (40, 'Madelene Milton', 'mmilton13@bloomberg.com', null);
insert into employee (id, name, email, birthday) values (41, 'Ardis Creasy', 'acreasy14@geocities.jp', '1995-08-26');
insert into employee (id, name, email, birthday) values (42, 'Dorella Orbell', 'dorbell15@dailymail.co.uk', '1906-11-05');
insert into employee (id, name, email, birthday) values (43, 'Grady Beslier', 'gbeslier16@icq.com', '1940-01-04');
insert into employee (id, name, email, birthday) values (44, 'Der Salters', 'dsalters17@chicagotribune.com', '1921-07-20');
insert into employee (id, name, email, birthday) values (45, 'Isiahi Dellenbrok', 'idellenbrok18@alexa.com', '1932-03-19');
insert into employee (id, name, email, birthday) values (46, 'Charlton Mew', null, '1952-07-04');
insert into employee (id, name, email, birthday) values (47, 'Corabel Guerreru', 'cguerreru1a@bbc.co.uk', '1933-03-14');
insert into employee (id, name, email, birthday) values (48, 'Sherman Ellor', 'sellor1b@scribd.com', '1956-03-16');
insert into employee (id, name, email, birthday) values (49, 'Fraser Oultram', 'foultram1c@usgs.gov', '1923-05-11');
insert into employee (id, name, email, birthday) values (50, 'Marchall Bowerbank', 'mbowerbank1d@weebly.com', '1974-01-27');

-- 3
UPDATE employee
SET email = 'den@eme.com'
WHERE email is NULL
RETURNING *;

-- 4
DELETE FROM employee
WHERE birthday is NULL
RETURNING *;
```
## Odev9
```sql
-- 1
SELECT city.city, country.country FROM city
JOIN country ON city.country_id =country.country_id;

-- 2
SELECT payment.payment_id, customer.first_name, customer.last_name FROM payment
JOIN customer ON payment.customer_id = customer.customer_id;

-- 3
SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental
JOIN customer ON rental.customer_id = customer.customer_id;
```
## Odev10
```sql
-- 1
SELECT city.city, country.country FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- 2
 SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer
 RIGHT JOIN payment ON payment.customer_id = customer.customer_id;
 
-- 3
 SELECT rental.rental_id, customer.first_name, customer.last_name FROM customer
 FULL JOIN rental ON rental.customer_id = customer.customer_id;
```
