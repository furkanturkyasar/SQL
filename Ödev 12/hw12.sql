SELECT COUNT(*) FROM film
WHERE length > (SELECT AVG(length) FROM film);

SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

SELECT COUNT(*) FROM film
WHERE rental_rate = ALL (SELECT MIN(rental_rate) FROM film) AND replacement_cost = ANY (SELECT MIN(replacement_cost) FROM film);

SELECT payment.customer_id, first_name, last_name, COUNT(payment.customer_id) AS payment_count FROM payment
LEFT JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY payment_count DESC;
