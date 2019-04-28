SELECT * FROM sakila.actor; # Wybierz wrzystko z tabeli actor.

# Rodzaje komentarzy:
# 1. Komentarz jednowierszowy ( -- ),
# 2. Komentarz wielowierszowy ( /* */ ),
# 3. Komentarz specyficzny dla MySQL ( # ).

DESCRIBE sakila.actor; # Opis zawartości tabeli wraz z typami, kluczami oraz extra informacjami.

SELECT first_name, last_name FROM actor;

SELECT first_name, last_name FROM sakila.actor ORDER BY last_name; # Posortowanie po nazwisku.

SELECT first_name AS 'Imie', last_name AS 'Nazwisko' FROM sakila.actor ORDER By Nazwisko; # AS - Alias.
  
SELECT Imie, Nazwisko FROM sakila.actor ORDER BY Nazwisko LIMIT 5; # Wyświetlenie 5 początkowych wierszy.

SELECT Imie, Nazwisko FROM sakila.actor ORDER BY Nazwisko LIMIT 10 OFFSET 5; # Wyświetlenie 10 kolejnych wierszy, zaczynając od 6.

SELECT title FROM sakila.film ORDER BY title ASC; # Wyświetlenie filmów w kolejności alfabetycznej.

SELECT title FROM sakila.film ORDER BY title DESC; # Odwrotne sortowanie alfabetyczne.

SELECT title, replacement_cost FROM sakila.film ORDER BY replacement_cost DESC, title;

SELECT title, release_year, rental_rate, replacement_cost FROM sakila.film ORDER BY replacement_cost;

SELECT 
    title AS Tytul,
    release_year AS Rok_wydania,
    rental_rate AS Koszt_zakupu,
    replacement_cost AS Koszt
FROM
    sakila.film
ORDER BY Koszt;

SELECT title, rental_rate FROM sakila.film WHERE rental_rate < 3 ORDER BY rental_rate;

SELECT title, rental_rate > 1 AND rental_rate < 5 ORDER BY rental_rate DESC;

SELECT title, description FROM sakila.film WHERE description LIKE '%drama%'; # Wybierz tytuł i opis, gdzie w opisie występuje słowo 'drama'.

SELECT title, description, rating FROM sakila.film WHERE rating IN ('G', 'PG') ORDER BY rating; # Wybierz tytuł, opis, rating, gdzie rating = G oraz rating = PG.

SELECT customer_id, return_date FROM rental WHERE return_date BETWEEN '2005-06-30' AND '2005-07-30' ORDER BY return_date;

SELECT first_name, last_name FROM customer WHERE LEFT(last_name, 1) BETWEEN 'D' AND 'E'; # Wyświetlenie nazwisk na literę D i na literę E.

SELECT title FROM sakila.film WHERE title LIKE 'A%'; # Wyświetlenie filmów na literę A.

SELECT title FROM sakila.film WHERE title LIKE '_a%'; # Wyświetlenie filmów z literą A na drugim miejscu.
