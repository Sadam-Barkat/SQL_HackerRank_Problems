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
