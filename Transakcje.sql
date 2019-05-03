USE test_2;

ALTER TABLE test_2.towary ADD stan INT NOT NULL DEFAULT 30;

SELECT * FROM test_2.towary;

CREATE TABLE sprzedaz (
	id 			SERIAL,
    id_tow		INT,
	sztuk		INT,
    cena		int
);

START transaction;
	INSERT INTO sprzedaz (id_tow, sztuk, cena) VALUES (1, 3, 30);
    UPDATE towary SET stan = stan - 5 WHERE id = 1;
commit;