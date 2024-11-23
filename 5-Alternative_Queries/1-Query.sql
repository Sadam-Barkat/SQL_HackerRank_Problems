/*
Problem:
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20)

Problem Link: 
https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true
*/

#Solution:

WITH RECURSIVE numbers AS(
    SELECT 20 AS n
    
    UNION 
    
    SELECT n - 1 FROM numbers WHERE n > 1
)

SELECT REPEAT('* ',n) FROM numbers;