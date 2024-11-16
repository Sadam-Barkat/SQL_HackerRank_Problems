/*
Problem:
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780
Round your answer to 4 decimal places

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
*/

#Problem Solution:

WITH cte AS (
      SELECT
      *,
      LAT_N AS lat
      FROM STATION
      WHERE LAT_N > 38.7780
      )

SELECT
      CAST(ROUND(LONG_W,4) AS DECIMAL(10,4)) AS long
      FROM cte
      WHERE lat in (SELECT MIN(lat) FROM cte);