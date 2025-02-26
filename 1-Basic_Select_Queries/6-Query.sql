/*
Problem:
Query the Name of any student in STUDENTS who scored higher than  Marks.
Order your output by the last three characters of each name.
If two or more students both have names ending in the same 
last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Problem link:
https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
*/

#Solution:

SELECT 
      Name 
      FROM STUDENTS 
      WHERE Marks > 75
      ORDER BY SUBSTRING(Name, CHAR_LENGTH(Name)-2,3), ID;