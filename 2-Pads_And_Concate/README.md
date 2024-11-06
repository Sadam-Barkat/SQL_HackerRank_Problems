# README: SQL Pivoting and Alphabetical Sorting of Occupations

## Overview
This document outlines the process of using SQL to pivot the `Occupation` column and display names alphabetically under respective columns. The task demonstrates pivoting rows into columns while handling data alignment and NULL values for unmatched rows.

## Concepts Explored
- **Pivoting in SQL**: Transforming rows into columns for organized data presentation.
- **`ROW_NUMBER()`**: Assigning unique identifiers to rows within partitions for ordering.
- **`CASE` Statements**: Conditional logic for selective column population.
- **Conditional Aggregation**: Using aggregate functions to compile results into columns.

## Data Structure
### Example Table: `OCCUPATIONS`
| name   | occupation  |
|--------|-------------|
| John   | Doctor      |
| Jane   | Doctor      |
| Alice  | Professor   |
| Bob    | Singer      |
| Carol  | Professor   |
| David  | Actor       |
| Eve    | Singer      |

### Desired Output
| Doctor | Professor | Singer | Actor |
|--------|-----------|--------|-------|
| Jane   | Alice     | Bob    | David |
| John   | Carol     | Eve    | NULL  |

## Key Steps
1. **CTE Creation**: Use a Common Table Expression (CTE) to create a dataset with row numbers assigned to each name per occupation.
2. **Conditional Aggregation**: Apply `CASE` statements with `MAX()` to populate columns based on conditions.
3. **Grouping and Ordering**: Group by row number to align names correctly and order for proper display.

## Outcome
By combining `ROW_NUMBER()`, CTEs, and `CASE` statements, this approach effectively pivots the data, ensuring alphabetical ordering and displaying `NULL` for missing values. This method improves data readability and organization in SQL reports.

## Conclusion
This technique is a robust solution for pivoting data and arranging results in a structured table format. It is adaptable for complex queries involving multiple groupings and conditional data presentation.
