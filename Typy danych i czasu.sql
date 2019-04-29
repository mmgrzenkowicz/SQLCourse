SHOW VARIABLES LIKE '%time_zone%';

SELECT NOW(); # Dokładna data i godzina.

DROP TABLE IF EXISTS towary;

CREATE TABLE towary(
		id SERIAL,
        nazwa VARCHAR (255),
        przyjecie TIMESTAMP
);

INSERT INTO towary(nazwa) VALUES ('Mleko');
INSERT INTO towary(nazwa) VALUES ('Czekolada');

SELECT * FROM towary;