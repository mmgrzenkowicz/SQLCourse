SELECT date_format(NOW(), '%T'); # '21:05:13'

SELECT date_format(NOW(), '%r'); # 09:11:30 PM

SELECT date_format(NOW(), '%H'); # 21

SELECT date_format(NOW(), '%H:%i:%s'); # 21:14:27

SELECT date_format(NOW(), '%w'); # 2 (dzień tyg.)

SELECT date_format(NOW(), '%w %D'); # '2 30th'

SELECT date_format(NOW(), '%w %D of %M'); # '2 30th of April'

SHOW VARIABLES LIKE '%lc_time_names%'; # lc_time_names	en_US

SET lc_time_names='pl_PL';