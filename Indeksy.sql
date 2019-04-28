CREATE TABLE kursantki (
		kursantki_id		INT(11) DEFAULT NULL,
        imie				VARCHAR(15) COLLATE utf8_polish_ci DEFAULT NULL,
        nazwisko			VARCHAR(120) COLLATE utf8_polish_ci DEFAULT NULL,
        kurs				VARCHAR(5) COLLATE utf8_polish_ci DEFAULT NULL,
        INDEX(nazwisko)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_polish_ci;

INSERT INTO kursantki (kursantki_id, imie, nazwisko, kurs) VALUES (1, 'Ala', 'Nowak', 'AB123');
INSERT INTO kursantki (kursantki_id, imie, nazwisko, kurs) VALUES (2, 'Ewa', 'Kowalska', 'CD456');
INSERT INTO kursantki (kursantki_id, imie, nazwisko, kurs) VALUES (3, 'Ola', 'Żółta', 'EF789');

SELECT * FROM kursantki;

SHOW INDEXES FROM kursantki;

SHOW CREATE TABLE kursantki;

DROP TABLE IF EXISTS kursantki;