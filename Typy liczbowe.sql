USE test_2;

DROP TABLE IF EXISTS liczby;

CREATE TABLE liczby (
	a INT,
    b INT,
    c FLOAT,
    d FLOAT,
    e DOUBLE,
    f DOUBLE,
    g DECIMAL,
    h DECIMAL
);

INSERT INTO liczby VALUES (1, 2, 1.1, 2.2, 1.1, 2.2, 1.1, 2.2);

SELECT c+d FROM liczby; # 3.3000000715255737

SELECT e+f FROM liczby; # 3.3000000000000003

SELECT g+h FROM liczby; #3

SELECT a+b = 3 FROM liczby; # 1, True