/*
Problem:
Query the Euclidean Distance between points p1 and p2 and format your answer to display 4 decimal digits.

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
*/

#Problem Solution

WITH cte AS
(
    SELECT
        MIN(LAT_N) AS min_a,
        MAX(LAT_N) AS max_b,
        MIN(LONG_W) AS min_c,
        MAX(LONG_W) AS max_d
    FROM Station
)
SELECT
    ROUND(SQRT(POWER(max_d - min_c, 2) + POWER(max_b - min_a, 2)), 4) AS distance
FROM cte;
