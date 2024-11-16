/*
Problem:
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN

Problem Link:
https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      SUM(population) AS total_population
      FROM CITY 
      WHERE Countrycode = 'JPN';