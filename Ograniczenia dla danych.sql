DROP TABLE IF EXISTS kursantki;

CREATE TABLE kursantki (
	kursantki_id		INT(11) NOT NULL UNIQUE,
    imie				VARCHAR(15) NOT NULL,
    nazwisko			VARCHAR(120) NOT NULL DEFAULT 'Uczen',
    kurs				VARCHAR(5)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_polish_ci;