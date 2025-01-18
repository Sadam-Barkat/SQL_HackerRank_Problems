/*
Problem:
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Problem Link:
https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
*/

#Solution:

SELECT 
      c.company_code,MAX(c.founder), 
      COUNT(DISTINCT lead_manager_code),
      COUNT(DISTINCT senior_manager_code),
      COUNT(DISTINCT manager_code),
      COUNT(DISTINCT employee_code)
FROM Employee e
LEFT JOIN Company c
ON c.company_code = e.company_code
GROUP BY c.company_code
ORDER BY c.company_code;