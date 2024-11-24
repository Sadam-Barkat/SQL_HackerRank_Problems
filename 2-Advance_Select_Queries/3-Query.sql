/*
Problem:
Write a query to print all prime numbers less than or equal to 
Print your result on a single line, and use the ampersand () character as your separator (instead of a space).
For example, the output for all prime numbers  would be:
2&3&5&7

Problem Link:
https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true
*/

#Solution:

WITH RECURSIVE primes AS (
    SELECT 2 AS num
    UNION ALL
    SELECT num + 1
    FROM primes
    WHERE num <= 1000
)
SELECT GROUP_CONCAT(num SEPARATOR '&') AS prime_numbers
FROM primes
WHERE NOT EXISTS (
    SELECT 1
    FROM primes AS p
    WHERE p.num < primes.num AND primes.num % p.num = 0
)
