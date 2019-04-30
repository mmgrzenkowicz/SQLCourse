CREATE TABLE zapas(
	id SERIAL,
    nazwa VARCHAR(100),
    stan ENUM ('wysoki', 'sredni', 'niski')
);

INSERT INTO zapas(nazwa, stan) VALUES ('Mleko', 'wysoki');
INSERT INTO zapas(nazwa, stan) VALUES ('Ser', 'sredni');

SELECT * FROM zapas;

CREATE TABLE magazyn(
	id SERIAL,
    nazwa VARCHAR(100),
    alejka SET('biala', 'czerwona', 'zielona')
);

INSERT INTO magazyn(nazwa, alejka) VALUES ('Mleko', 'biala');
INSERT INTO magazyn(nazwa, alejka) VALUES ('Jogurt owocowy', 'zielona,biala');

SELECT * FROM magazyn;

