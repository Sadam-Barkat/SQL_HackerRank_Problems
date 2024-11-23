/*
Problem:
You are given two tables: Students and Grades
Students contains three columns ID, Name and Marks

Problem Link:
https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
*/

#Problem Solution:

WITH cte AS(SELECT 
    s.name,
    s.marks,
    g.Grade
FROM 
    students s
JOIN 
    grades g 
    ON s.marks BETWEEN g.Min_Mark AND g.Max_Mark)

SELECT 
    CASE 
        WHEN grade >= 8 THEN name
        ELSE 'NULL'
    END AS Name,
    grade,
    marks
FROM 
    cte
ORDER BY 
    grade DESC, 
    CASE 
        WHEN grade >= 8 THEN name
        ELSE marks
    END ASC;

           