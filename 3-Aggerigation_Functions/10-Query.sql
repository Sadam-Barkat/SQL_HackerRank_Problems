/*
Problem:
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345
Truncate your answer to  decimal places

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
*/

#Problme Solution:

SELECT
      CAST(ROUND(SUM(LAT_N),4) AS DECIMAL(10, 4)) AS lat
      FROM STATION
      WHERE LAT_N > 38.7880 AND LAT_N <137.2345;