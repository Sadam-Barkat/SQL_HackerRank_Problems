/*
Problem:
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345
Round your answer to 4 decimal places

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      CAST(ROUND(LONG_W,4) AS DECIMAL(10, 4)) AS long
      FROM STATION
      WHERE LAT_N IN (SELECT MAX(LAT_N) AS lat
                      FROM STATION
                      WHERE LAT_N < 137.2345)
                      