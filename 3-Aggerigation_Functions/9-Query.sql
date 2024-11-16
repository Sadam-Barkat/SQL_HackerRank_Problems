/*
Problem:
Query the following two values from the STATION table
The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
*/

#Problem Solution

SELECT
    CAST(ROUND(SUM(LAT_N), 2) AS DECIMAL(10, 2)) AS lat,
    CAST(ROUND(SUM(LONG_W), 2) AS DECIMAL(10, 2)) AS lon
FROM STATION;
