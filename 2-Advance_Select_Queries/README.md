# Advanced Select

## Overview
This section focuses on advanced `SELECT` queries to extract, manipulate, and format data from a table. You'll learn about:
- Handling duplicates with `DISTINCT`.
- Performing conditional logic using `CASE`.
- Using string functions to manipulate text.
- Advanced filtering and sorting techniques.

## Topics Covered
1. Removing Duplicates with `DISTINCT`
2. Conditional Logic with `CASE`
3. String Manipulation
4. Advanced Filtering and Sorting

---

## Problems

### Problem 1: Select Unique Values
**Description**: Write a query to retrieve unique values from a column in a table.  
**Solution**:  
```sql
SELECT DISTINCT column_name FROM table_name;
