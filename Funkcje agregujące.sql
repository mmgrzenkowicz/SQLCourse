SELECT COUNT(*) FROM sakila.payment;
SELECT * FROM sakila.payment;

SELECT COUNT(*) FROM sakila.payment WHERE customer_id = 1; # 32

SELECT MIN(amount) FROM sakila.payment WHERE customer_id = 1; # 0.99
SELECT MAX(amount) FROM sakila.payment WHERE customer_id = 1; # 9.99
SELECT SUM(amount) FROM sakila.payment WHERE customer_id = 1; # 118.68
SELECT AVG(amount) FROM sakila.payment WHERE customer_id = 1; # 3.70875, średnia
SELECT STD(amount) FROM sakila.payment WHERE customer_id = 1; # 2.2670, odchylenie standardowe

SELECT COUNT(*), COUNT(address2) FROM sakila.address; # 603 (z wartościami NULL), 599 (bez wartości NULL)

SELECT COUNT(DISTINCT district) FROM sakila.address; # 378, DISTINCT - bez powtórzeń

SELECT district, COUNT(*) AS Licznik FROM sakila.address GROUP BY district ORDER BY Licznik DESC; #Posegregowanie powtarzających się districtów wg ilości.

SELECT GROUP_CONCAT(address SEPARATOR '|') FROM sakila.address WHERE district = 'Gois'; # Wszystkie adresy, które należą do dystryktu Gois w jednym wierszu.

SELECT district, GROUP_CONCAT(address ORDER BY district SEPARATOR '|') FROM sakila.address GROUP BY district;

