/*
Problem:
Query the average population for all cities in CITY, rounded down to the nearest integer

Problem Link:
https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      ROUND(AVG(population)) AS avg_population
      FROM CITY;