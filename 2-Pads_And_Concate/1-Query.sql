/*
Problem:
1-Query an alphabetically ordered list of all names in OCCUPATIONS,
 immediately followed by the first letter of each profession as a
 parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), 
 ADoctorName(D), AProfessorName(P), and ASingerName(S).

2-Query the number of ocurrences of each occupation in OCCUPATIONS.
  Sort the occurrences in ascending order, and output them in the following format:

Problem Link:
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
*/

#Solution:

SELECT 
    CONCAT(name, '(', LEFT(occupation, 1), ')') AS name_with_profession
FROM OCCUPATIONS
ORDER BY name;


SELECT 
    CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') AS occupation_count
FROM OCCUPATIONS
GROUP BY occupation
ORDER BY COUNT(occupation) ASC, occupation;
