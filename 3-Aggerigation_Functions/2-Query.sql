/*
Prblem:
Query the total population of all cities in CITY where District is California

Problem Link:
https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      SUM(population) AS total_population
      FROM CITY 
      WHERE District = 'California';
