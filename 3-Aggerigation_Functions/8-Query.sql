/*
Problem:
We define an employee's total earnings to be their monthly  worked, and the maximum
total earnings to be the maximum total earnings for any employee in the Employee table.
Write a query to find the maximum total earnings for all employees as well as the total 
number of employees who have maximum total earnings. Then print these values as  space-separated integers.

Problem Link:
https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
*/

#Problem Solution:

WITH cte1 AS(
             SELECT
                  *,
                  (salary * months) AS total_earnings
                  FROM Employee
            )
      
SELECT 
      MAX(total_earnings),COUNT(employee_id)
      FROM cte1
      WHERE total_earnings in (SELECT MAX(total_earnings) FROM cte1);
      