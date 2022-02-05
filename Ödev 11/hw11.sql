1-

(
SELECT * FROM actor
ORDER BY first_name
)
UNION
(
SELECT * FROM customer
ORDER BY first_name
)


2-

(
SELECT * FROM actor
ORDER BY first_name
)
INTERSECT
(
SELECT * FROM customer
ORDER BY first_name
)


3-

(
SELECT * FROM actor
ORDER BY first_name
)
EXCEPT
(
SELECT * FROM customer
ORDER BY first_name
)


4-

(
SELECT * FROM actor
ORDER BY first_name
)
UNION ALL
(
SELECT * FROM customer
ORDER BY first_name
)

(
SELECT * FROM actor
ORDER BY first_name
)
INTERSECT ALL
(
SELECT * FROM customer
ORDER BY first_name
)

(
SELECT * FROM actor
ORDER BY first_name
)
EXCEPT ALL
(
SELECT * FROM customer
ORDER BY first_name
)
