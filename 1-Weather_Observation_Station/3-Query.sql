/*
Problem:
Query the list of CITY names from STATION that do not end with vowels.
Your result cannot contain duplicates.

Problem link:
https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
*/

#Solution:

SELECT DISTINCT(CITY) FROM STATION WHERE CITY NOT LIKE '%a'
AND CITY NOT LIKE '%e'
AND CITY NOT LIKE '%i'
AND CITY NOT LIKE '%o'
AND CITY NOT LIKE '%u';