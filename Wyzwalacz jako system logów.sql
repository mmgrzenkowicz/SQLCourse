CREATE TABLE zdarzenia (
	id				SERIAL,
    czas			TIMESTAMP,
    wydarzenia		VARCHAR(255),
    uzytkownik		VARCHAR(255),
    tablica			VARCHAR(255),
    rekord_id		BIGINT
);

DROP TRIGGER IF EXISTS nowaSprzedaz;

DELIMITER $$
	CREATE TRIGGER nowaSprzedaz 
    AFTER INSERT ON sprzedaz
    FOR EACH ROW
    BEGIN 
		UPDATE kursantki SET ostatni_zakup_id = new.id WHERE kursantki_id = new.kursantki_id;
        INSERT INTO zdarzenia (wydarzenia, uzytkownik, tablica, rekord_id) VALUES ('insert', 'trigger', 'sprzedaz', NEW.id);
	END $$
DELIMITER ;

INSERT INTO sprzedaz (id_tow, sztuk, cena, kursantki_id, blokada) VALUES (1, 555, 1010, 5, 0);