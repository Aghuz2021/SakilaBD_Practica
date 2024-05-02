use sakila ;
/*1) La cláusula SELECT en SQL
- Escribe una consulta que seleccione todos los datos de la tabla actor.
- Escribe una consulta que seleccione solo los nombres (first_name y last_name) de la tabla actor.
*/
-- Escribe una consulta que seleccione todos los datos de la tabla actor.
SELECT * FROM actor;
-- Escribe una consulta que seleccione solo los nombres (first_name y last_name) de la tabla actor.
SELECT first_name, last_name From actor;

/*2) La cláusula WHERE
Escribe una consulta que seleccione todos los datos de la tabla film donde la clasificación (rating) sea 'R'.
*/
-- Escribe una consulta que seleccione todos los datos de la tabla film donde la clasificación (rating) sea 'R'
SELECT * 
from film
WHERE rating = 'R';

/*3)La operación renombramiento
- Escribe una consulta que seleccione el título (title) de la tabla film y lo renombre como nombre_pelicula.
*/
-- Escribe una consulta que seleccione el título (title) de la tabla film y lo renombre como nombre_pelicula.
SELECT title AS nombre_pelicula 
FROM film;

/*4)Operaciones con cadenas de caracteres
- Escribe una consulta que seleccione todos los nombres de la tabla actor que comiencen con la letra 'J'.
- Escribe una consulta que seleccione todos los nombres de las ciudades de la tabla city que terminen con 'o'.
*/
-- Escribe una consulta que seleccione todos los nombres de la tabla actor que comiencen con la letra 'J'
SELECT first_name 
FROM actor
WHERE first_name
LIKE "J%";
-- Escribe una consulta que seleccione todos los nombres de las ciudades de la tabla city que terminen con 'o'
SELECT city 
FROM city
WHERE city
LIKE "%O";

/*5)funciones de agregación
- Escribe una consulta que calcule la media del precio (rental_rate) de todas las películas.
- Escribe una consulta que cuente cuántas veces se ha alquilado cada película.*/

-- Escribe una consulta que calcule la media del precio (rental_rate) de todas las películas.
SELECT AVG(rental_rate) AS promedio_renta
FROM film;


/*Valores nulos
Escribe una consulta que seleccione todos los datos de la tabla address donde la columna district es nula.
Escribe una consulta que seleccione todos los datos de la tabla customer donde la columna last_update no sea nula.*/

-- Escribe una consulta que seleccione todos los datos de la tabla address donde la columna district es nula.
SELECT *
FROM address
WHERE district IS NULL;
-- Escribe una consulta que seleccione todos los datos de la tabla customer donde la columna last_update no sea nula
SELECT *
FROM customer
WHERE last_update IS NOT NULL