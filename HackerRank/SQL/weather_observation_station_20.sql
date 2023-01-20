-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem
WITH MYTABLE AS (SELECT *,
COUNT(LAT_N) OVER() AS TOTAL_COUNT,
ROW_NUMBER() OVER(ORDER BY LAT_N) AS CURRENT_ORDER
FROM STATION)
SELECT ROUND(AVG(LAT_N), 4) 
FROM MYTABLE
WHERE
CASE WHEN MOD(TOTAL_COUNT, 2) = 0
THEN CURRENT_ORDER = TOTAL_COUNT / 2
OR CURRENT_ORDER = TOTAL_COUNT / 2 + 1
ELSE CURRENT_ORDER = (TOTAL_COUNT + 1) / 2
END;