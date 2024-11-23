/*
Problem:
Given the CITY and COUNTRY tables, query the sum of the 
populations of all cities where the CONTINENT is 'Asia'

Problem Link:
https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
*/

#Problem Solution:

SELECT 
      SUM(c.population) AS total_population
      FROM CITY c
      JOIN COUNTRY cy
      ON c.countrycode = cy.code
      WHERE cy.continent = 'Asia';
      
