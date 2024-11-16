# Basic Joins

## Overview
This section focuses on combining data from multiple tables using SQL joins. You'll learn about:
- Using `INNER JOIN` to fetch matching records from two tables.
- Using `LEFT JOIN` to fetch all records from one table and matching records from another.
- Using `RIGHT JOIN` and `FULL JOIN` for more complex combinations.

## Topics Covered
1. Matching Data with `INNER JOIN`
2. Including Non-Matching Data with `LEFT JOIN`
3. Combining Data with `RIGHT JOIN` and `FULL JOIN`

---

## Problems

### Problem 1: Simple Inner Join
**Description**: Write a query to fetch data from two tables with matching values in a specific column.  
**Solution**:  
```sql
SELECT t1.column1, t2.column2
FROM table1 AS t1
INNER JOIN table2 AS t2
ON t1.common_column = t2.common_column;
