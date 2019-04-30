SELECT current_timestamp(); # 2019-04-30 20:30:21

SELECT dayname(NOW()); # Tuesday

SELECT dayofmonth(NOW()); # 30

SELECT dayofweek(NOW()); # 3

SELECT dayofyear(NOW()); # 120

SELECT month(NOW()), monthname(NOW()); # 4 April

SELECT time_to_sec('00:10:00'); # 600

SELECT sec_to_time(4872); # 01:21:12

SELECT ADDTIME('01:59:30', '01:03:54'); # '03:03:24'

SELECT SUBTIME('01:59:30', '01:03:54'); # '00:55:36'

SELECT ADDDATE('2015-04-20', INTERVAL 45 DAY); # '2015-06-04'

SELECT SUBDATE('2015-04-20', INTERVAL 45 DAY); # '2015-03-06'