/*
Problem:
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
*/

#Problem Solution

SELECT 
      ROUND(s.LAT_N, 4)
      FROM Station s
      WHERE (SELECT COUNT(LAT_N) FROM station WHERE LAT_N < s.LAT_N) = 
      (SELECT COUNT(LAT_N) FROM station WHERE LAT_N > s.LAT_N);