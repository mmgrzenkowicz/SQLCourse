SELECT * FROM sakila.film ORDER BY title DESC;

SELECT LENGTH('Tomek'); # 5

SELECT title, LENGTH(title) AS Dlugosc FROM sakila.film ORDER BY Dlugosc DESC;

SELECT LENGTH('zolty'); # 5 (bajtów)

SELECT LENGTH('żółty'); # 8 (bajtów)

SELECT LENGTH('żółty'); # 5 (bajtów)

SELECT title, LEFT(title, 5) FROM sakila.film; # Zwrócenie z każdego tytułu 5 znaków, zaczynając od strony lewej.

SELECT title, RIGHT(title, 5) FROM sakila.film; # Zwrócenie z każdego tytułu 5 znaków, zaczynając od strony prawej.

SELECT title, MID(title, 5, 7) FROM sakila.film; # Zwrócenie z każdego tytułu 7 znaków, zaczynając od 5.

SELECT CONCAT(title, ' / ', release_year) FROM sakila.film; # Złączenie dwóch kolumn w jedną.

SELECT CONCAT_WS(' - ', title, release_year) FROM sakila.film;

SELECT LOCATE('finger', 'goldfinger'); # Zwraca cyfrę, od której zaczyna się pierwszy napis.

SELECT title, LOCATE('finger', title) FROM sakila.film WHERE title LIKE '%finger%';

SELECT title, REVERSE(title) FROM sakila.film;

SELECT title, LOWER(title) FROM sakila.film;

SELECT title, UPPER(title) FROM sakila.film;