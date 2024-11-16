/*
Problem:
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table,
but did not realize her keyboard's  key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), 
and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Problme LInk:
https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
*/

#Problem Solution:

WITH ActualAvg AS (
    SELECT AVG(salary) AS actual_avg
    FROM EMPLOYEES
),
MiscalculatedAvg AS (
    SELECT AVG(CAST(REPLACE(CAST(salary AS CHAR), '0', '') AS UNSIGNED)) AS miscalculated_avg
    FROM EMPLOYEES
)
SELECT 
    CEIL(ABS(miscalculated_avg - actual_avg)) AS error_amount
FROM 
    ActualAvg, MiscalculatedAvg;
