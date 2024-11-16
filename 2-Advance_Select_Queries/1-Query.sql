/*
Problem:
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically 
and displayed underneath its corresponding Occupation. 
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Problem Link:
https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true
*/

#Solution:

WITH RankedOccupations AS (
    SELECT 
        name, 
        occupation,
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn
    FROM OCCUPATIONS
)
SELECT 
    MAX(CASE WHEN occupation = 'Doctor' THEN name END) AS Doctor,
    MAX(CASE WHEN occupation = 'Professor' THEN name END) AS Professor,
    MAX(CASE WHEN occupation = 'Singer' THEN name END) AS Singer,
    MAX(CASE WHEN occupation = 'Actor' THEN name END) AS Actor
FROM RankedOccupations
GROUP BY rn
ORDER BY rn;
