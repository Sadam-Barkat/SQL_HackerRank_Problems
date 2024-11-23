/*
Problem:
Given the CITY and COUNTRY tables, query the names of all the continents 
(COUNTRY.Continent) and their respective average city populations 
(CITY.Population) rounded down to the nearest integer

Problem Link:
https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
*/

#Problem Solution:

SELECT
      cy.continent,
      FLOOR(AVG(c.population)) AS avg_population
      FROM CITY c
      JOIN COUNTRY cy
      ON c.countrycode = cy.code
      GROUP BY cy.continent;