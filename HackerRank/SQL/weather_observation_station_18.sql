-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
WITH STATS AS (
    SELECT MIN(LAT_N) AS a, MIN(LONG_W) AS b, Max(LAT_N) AS c, Max(LONG_W) AS d
    FROM STATION
)
SELECT ROUND(ABS(c-a) + ABS(d-b), 4) FROM STATS;