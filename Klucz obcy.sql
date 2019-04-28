DROP TABLE IF EXISTS kursantki;

# TABELA kursantki.
CREATE TABLE kursantki (
	kursantki_id 	INT AUTO_INCREMENT PRIMARY KEY,
    imie			VARCHAR(15) NOT NULL,
    nazwisko		VARCHAR(120) NOT NULL DEFAULT 'Uczen'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_polish_ci;

INSERT INTO kursantki (imie) VALUES ('Ola');
INSERT INTO kursantki (imie) VALUES ('Ala');
INSERT INTO kursantki (imie) VALUES ('Ewa');
INSERT INTO kursantki (imie) VALUES ('Jaga');
INSERT INTO kursantki (imie) VALUES ('Ida');
INSERT INTO kursantki (imie) VALUES ('Daria');

SELECT * FROM kursantki;

# TABELA kurs.
CREATE TABLE kurs (
	kurs_id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(15) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_polish_ci;

INSERT INTO kurs(nazwa) VALUES ('C++');
INSERT INTO kurs(nazwa) VALUES ('C#');
INSERT INTO kurs(nazwa) VALUES ('PHP');
INSERT INTO kurs(nazwa) VALUES ('Ruby');

# TABELA nauka.
CREATE TABLE nauka (
	nauka_id INT AUTO_INCREMENT PRIMARY KEY,
    kursantki_id INT,
    kurs_id INT,
    FOREIGN KEY (kurs_id) REFERENCES kurs(kurs_id),
    FOREIGN KEY (kursantki_id) REFERENCES kursantki(kursantki_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_polish_ci;

INSERT INTO nauka (kursantki_id, kurs_id) VALUES (1,1);
INSERT INTO nauka (kursantki_id, kurs_id) VALUES (1,2);
INSERT INTO nauka (kursantki_id, kurs_id) VALUES (2,4);
INSERT INTO nauka (kursantki_id, kurs_id) VALUES (3,3);
INSERT INTO nauka (kursantki_id, kurs_id) VALUES (4,1);
INSERT INTO nauka (kursantki_id, kurs_id) VALUES (5,2);

SELECT * FROM nauka;

SELECT 
    nauka.nauka_id,
    kursantki.imie,
    kursantki.nazwisko,
    kurs.nazwa
FROM
    nauka
        LEFT JOIN
    kursantki ON nauka.kursantki_id = kursantki.kursantki_id
        LEFT JOIN
    kurs ON nauka.kurs_id = kurs.kurs_id;