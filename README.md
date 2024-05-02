# La cláusula SELECT en SQL

Escribe una consulta que seleccione todos los datos de la tabla actor.
```sql
SELECT *
FROM actor;
```

Escribe una consulta que seleccione solo los nombres (first_name y last_name) de la tabla actor.
```sql
SELECT first_name, last_name
FROM actor;
```

La cláusula WHERE

Escribe una consulta que seleccione todos los datos de la tabla film donde la clasificación (rating) sea 'R'.
```sql
SELECT *
FROM film
WHERE rating = 'R';
```

Escribe una consulta que seleccione los datos de la tabla customer para aquellos clientes que tengan más de 30 años.
```sql
SELECT *
FROM customer
WHERE age > 30;
```

La cláusula FROM

Escribe una consulta que seleccione todos los datos de la tabla address.
```sql
SELECT *
FROM address;
```

Escribe una consulta que seleccione el nombre (name) de la tabla category.
```sql
SELECT name
FROM category;
```

La operación renombramiento

Escribe una consulta que seleccione el título (title) de la tabla film y lo renombre como nombre_pelicula.
```sql
SELECT title AS nombre_pelicula
FROM film;
```

Operaciones con cadenas de caracteres

Escribe una consulta que seleccione todos los nombres de la tabla actor que comiencen con la letra 'J'.
```sql
SELECT *
FROM actor
WHERE first_name LIKE 'J%';
```

Escribe una consulta que seleccione todos los nombres de las ciudades de la tabla city que terminen con 'o'.
```sql
SELECT *
FROM city
WHERE name LIKE '%o';
```

Orden en la presentación de las tuplas

Escribe una consulta que seleccione todos los datos de la tabla film y los ordene por el título (title) de forma ascendente.
```sql
SELECT *
FROM film
ORDER BY title ASC;
```

Escribe una consulta que seleccione todos los nombres de las películas de la tabla film y los ordene alfabéticamente por el título (title) de forma descendente.
```sql
SELECT title
FROM film
ORDER BY title DESC;
```

Operaciones sobre conjuntos

Escribe una consulta que combine los resultados de las tablas actor y customer, eliminando duplicados.
```sql
SELECT *
FROM actor
UNION
SELECT *
FROM customer;
```

Escribe una consulta que encuentre los actores que también son clientes utilizando la operación de intersección.
```sql
SELECT *
FROM actor
INTERSECT
SELECT *
FROM customer;
```

Funciones de agregación

Escribe una consulta que calcule la media del precio (rental_rate) de todas las películas.
```sql
SELECT AVG(rental_rate) AS promedio_renta
FROM film;
```

Escribe una consulta que cuente cuántas veces se ha alquilado cada película.
```sql
SELECT film_id, COUNT(*) AS veces_alquilada
FROM rental
GROUP BY film_id;
```

Valores nulos

Escribe una consulta que seleccione todos los datos de la tabla address donde la columna district es nula.
```sql
SELECT *
FROM address
WHERE district IS NULL;
```

Escribe una consulta que seleccione todos los datos de la tabla customer donde la columna last_update no sea nula.
```sql
SELECT *
FROM customer
WHERE last_update IS NOT NULL;
```
