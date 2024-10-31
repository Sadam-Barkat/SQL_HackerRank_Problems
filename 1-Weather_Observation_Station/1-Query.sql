/* 
Problem Statement:
Query the two cities in STATION with the shortest and longest CITY names,
 as well as their respective lengths (i.e.: number of characters in the name).
 If there is more than one smallest or largest city,
 choose the one that comes first when ordered alphabetically.

Problem Link:
https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
*/

#Solution:

(SELECT CITY, CHAR_LENGTH(CITY) AS NAME_LENGTH 
 FROM STATION 
 ORDER BY CHAR_LENGTH(CITY) DESC, CITY ASC 
 LIMIT 1)

UNION ALL

(SELECT CITY, CHAR_LENGTH(CITY) AS NAME_LENGTH 
 FROM STATION 
 ORDER BY CHAR_LENGTH(CITY) ASC, CITY ASC 
 LIMIT 1);
