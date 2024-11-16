/*
Problem:
Query a count of the number of cities in CITY having a Population larger than 100000

Problem Link:
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      COUNT(name) AS city_count
      FROM CITY
      WHERE Population > 100000;