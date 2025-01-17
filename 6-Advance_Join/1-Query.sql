/*
Problem:
Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.

Problem Link:
https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      Name
      FROM Students s, Friends f, Packages p1, Packages p2
      WHERE s.ID = f.ID AND s.ID = p1.ID AND f.Friend_ID = p2.ID AND p1.Salary < P2.Salary
      ORDER BY P2.Salary;