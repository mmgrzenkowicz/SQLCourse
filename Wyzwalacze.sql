ALTER TABLE kursantki ADD ostatni_zakup_id INT;

CREATE TRIGGER nowaSprzedaz 
AFTER INSERT ON sprzedaz FOR EACH ROW 
UPDATE kursantki SET ostatni_zakup_id = new.id 
WHERE kursantki_id = new.kursantki_id;

ALTER TABLE sprzedaz ADD kursantki_id INT;

INSERT INTO sprzedaz(id_tow, sztuk, cena, kursantki_id) VALUES (1, 11, 123, 1);