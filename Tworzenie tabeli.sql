USE test_2;

CREATE TABLE kursant (
		kursant_id 	INT,
        imie		VARCHAR(15),
        nazwisko	VARCHAR(80),
        kurs		VARCHAR(5)
)
ENGINE = InnoDB
DEFAULT CHARSET = utf8
COLLATE = utf8_polish_ci
;

DROP TABLE IF EXISTS kursant;

SELECT * FROM test_2.kursant;        