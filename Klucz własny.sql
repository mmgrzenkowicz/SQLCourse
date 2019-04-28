DROP TABLE IF EXISTS kursantki;

CREATE TABLE kursantki (
		kursantki_id		INT(11) AUTO_INCREMENT PRIMARY KEY, # Albo można zapisać krócej: SERIAL.
        imie				VARCHAR(15) NOT NULL,
        nazwisko			VARCHAR(120) NOT NULL DEFAULT 'Uczen',
        kurs				VARCHAR(5)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf_polish_ci;

INSERT INTO kursantki (kursantki_id, imie, nazwisko, kurs) VALUES (1,'Ala', 'Nowak', 'AB123');
INSERT INTO kursantki (kursantki_id, imie, nazwisko, kurs) VALUES (2, 'Ewa', 'Kowalska', 'AB123');
INSERT INTO kursantki (kursantki_id, imie, nazwisko, kurs) VALUES (3, 'Ola', 'Żółta', 'AB123');

SELECT * FROM kursantki;