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
      