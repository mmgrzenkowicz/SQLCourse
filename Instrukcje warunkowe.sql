SELECT imie,
	CASE imie WHEN 'Ola' THEN 'To jest Ola' END Ola,
    CASE imie WHEN 'Ala' THEN 'To jest Ala' END Ala
FROM kursantki;

SELECT
	imie,
    CASE imie
		WHEN 'Ola' THEN 'To jest Ola'
        ELSE 'To nie jest Ola'
	END AS Ola,
    
    CASE imie
		WHEN 'Ala' THEN 'To jest Ala'
        ELSE 'To nie jest Ala'
	END AS Ala
FROM 
	kursantki;