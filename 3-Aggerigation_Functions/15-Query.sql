/*
Problem:
Query the Manhattan Distance between points p1 and p2 and round it to a scale of 4 decimal places.

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
*/

#Problem Solution

WITH cte AS
(SELECT
      MIN(LAT_N) AS a,
      MIN(LONG_W) AS b,
      MAX(LAT_N) AS c,
      MAX(LONG_W) AS d
      FROM Station
)    
SELECT 
      ROUND((c - a) + (d - b),4)
      FROM cte;
