/*
Problem:
Given the CITY and COUNTRY tables, query the names 
of all cities where the CONTINENT is 'Africa'

Problem Link:
https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      c.name
      FROM CITY c
      JOIN COUNTRY cy
      ON c.countrycode = cy.code
      WHERE cy.continent = 'Africa';