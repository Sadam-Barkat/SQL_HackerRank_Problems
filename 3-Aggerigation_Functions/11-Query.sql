/*
Problem:
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345
Truncate your answer to 4 decimal places

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      CAST(ROUND(MAX(LAT_N),4) AS DECIMAL(10, 4)) AS lat
      FROM STATION 
      WHERE LAT_N < 137.2345;