SELECT * FROM sakila.actor; # Wybierz wrzystko z tabeli actor.

# Rodzaje komentarzy:
# 1. Komentarz jednowierszowy ( -- ),
# 2. Komentarz wielowierszowy ( /* */ ),
# 3. Komentarz specyficzny dla MySQL ( # ).

DESCRIBE sakila.actor; # Opis zawartości tabeli wraz z typami, kluczami oraz extra informacjami.

SELECT first_name, last_name FROM actor;

SELECT first_name, last_name FROM sakila.actor ORDER BY last_name; # Posortowanie po nazwisku.

SELECT first_name AS 'Imie', last_name AS 'Nazwisko' FROM sakila.actor ORDER By Nazwisko; # AS - Alias.
