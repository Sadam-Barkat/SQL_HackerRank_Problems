/*
Problem:
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

Problem Link:
https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      w.id, p.age, w.coins_needed, w.power
      FROM Wands w
      JOIN Wands_Property p
      ON w.code = p.code
      WHERE p.is_evil = 0 AND w.coins_needed =
      (
          SELECT 
                MIN(coins_needed)
          FROM Wands w2
          JOIN Wands_Property p2 
          ON w2.code = p2.code
          WHERE w2.power = w.power 
          AND p2.age = p.age
      )
      ORDER BY w.power DESC, p.age DESC;
      