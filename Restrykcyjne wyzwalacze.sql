ALTER TABLE sprzedaz ADD blokada INT DEFAULT 1;

DELIMITER $$

CREATE TRIGGER aktualizacjaSprzedazy 
BEFORE UPDATE ON sprzedaz
FOR EACH ROW
	BEGIN 
		IF (SELECT blokada FROM sprzedaz WHERE id = NEW.id) > 0
		THEN SIGNAL SQLSTATE '45000' SET message_text = "Błąd, nie można zaktualizować rekordu.";
        END IF;
	END $$
DELIMITER ;

START transaction;
	UPDATE sprzedaz SET sztuk = 30 WHERE id = 3;
commit;

INSERT INTO sprzedaz (id_tow, sztuk, cena, kursantki_id, blokada) VALUES (1, 10, 100, 2, 0);

START transaction;
	UPDATE sprzedaz SET sztuk = 333 WHERE id = 11;
commit;