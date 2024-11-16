/*
Problem:
Query the difference between the maximum and minimum populations in CITY

Problem Link:
https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      (MAX(population) - MIN(population)) AS dif_population
      FROM CITY;