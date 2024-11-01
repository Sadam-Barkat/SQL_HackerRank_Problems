/*
Problem:
Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.

Problem link:
https://www.hackerrank.com/challenges/name-of-employees/problem?isFullScreen=true
*/

#Solution:

SELECT
      name 
      FROM Employee 
      ORDER BY name ASC;