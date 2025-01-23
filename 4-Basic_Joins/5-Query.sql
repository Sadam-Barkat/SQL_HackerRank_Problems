/*
Problem:
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Problem Link:
https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      a.hacker_id, b.name
FROM Submissions a
      JOIN hackers b 
      ON a.hacker_id = b.hacker_id
      JOIN Challenges c 
      ON a.challenge_id = c.challenge_id
      JOIN Difficulty d
      ON c.difficulty_level = d.difficulty_level
WHERE a.score = d.score      
GROUP BY a.hacker_id, b.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, a.hacker_id;