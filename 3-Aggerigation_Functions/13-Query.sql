/*
Problem:
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780
Round your answer to 4 decimal places

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
*/

#Problem Solution:


WITH cte AS (
      SELECT
      LAT_N 
      FROM STATION 
      WHERE LAT_N > 38.7780
      )

SELECT 
      CAST(ROUND(MIN(LAT_N),4) AS DECIMAL(10,4)) AS lat1
      FROM cte;
