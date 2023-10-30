CREATE VIEW "peliculas_por_categoria" AS
SELECT c.name, COUNT (f.film_id) AS cantidad FROM film f JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON c.category_id = fc.category_id   
 GROUP BY c.name;


CREATE VIEW "actores_más_laburantes" AS
SELECT a.first_name, a.last_name, COUNT (a.first_name) AS cantidad 
FROM actor a 
JOIN film_actor fa ON a.actor_id = fa.actor_id 
JOIN film f ON fa.film_id = f.film_id 
GROUP BY a.first_name, a.last_name ORDER BY cantidad DESC 

CREATE VIEW "cantidad_de_peliculas" AS
SELECT f.title, ci.city, co.country,COUNT(i.inventory_id) AS cantidad 
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN store s ON i.store_id=s.store_id
JOIN address a ON a.address_id = s.address_id
JOIN city ci ON a.city_id=ci.city_id
JOIN country co ON ci.country_id=co.country_id
GROUP BY f.title, ci.city, co.country
ORDER BY cantidad DESC;

CREATE VIEW "direccion" AS
SELECT a.address, ci.city, co.country FROM address a
JOIN city ci ON a.city_id=ci.city_id
JOIN country co ON ci.country_id=co.country_id
;

CREATE VIEW "promedio_peliculas" AS
SELECT AVG(amount) AS "Precio promedio de todas las peliculas" FROM payment;

