# Aggregation

## Overview
This section focuses on SQL queries that summarize data using aggregate functions. You'll learn about:
- Using aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`.
- Grouping data with `GROUP BY`.
- Filtering aggregated results with `HAVING`.

## Topics Covered
1. Aggregate Functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
2. Grouping Data with `GROUP BY`
3. Filtering Aggregated Results with `HAVING`

---

## Problems

### Problem 1: Count Rows
**Description**: Write a query to count the total number of rows in a table.  
**Solution**:  
```sql
SELECT COUNT(*) AS total_rows FROM table_name;
