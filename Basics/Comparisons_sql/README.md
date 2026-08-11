# SQL Data Analysis: Filtering & Data Transformation

This repository contains foundational SQL scripts for querying, formatting, and filtering data from job market datasets. It covers column aliasing, basic data aggregations, and data filtering techniques using conditional clauses.

## 🔑 Core SQL Concepts

### 1. Data Filtering (`WHERE`)
The `WHERE` clause filters records to return only rows that meet specific conditions. 
* **Comparison Operators**: Used to match precise values (e.g., `=`, `<>`).
* **Logical Operators**: Used to combine multiple conditions or ranges (e.g., `AND`, `OR`, `BETWEEN`, `IN`).

### 2. Column Aliasing (`AS`)
The `AS` keyword renames a column or table with a temporary alias to make report headers user-friendly without altering the database schema.

### 3. Aggregate Functions
* `SUM()`: Adds numeric values.
* `COUNT()`: Counts rows matching specific criteria.

## 🗄️ Database Structure

All queries interact with the following core table:
* **`job_postings_fact`**: A fact table storing global job vacancy details, schedules, locations, platforms, and compensation metrics.

## 💻 SQL Query Catalog

### 1. Filtering by Location
Extracts key job metadata exclusively for roles based in Tampa, FL.
```sql
SELECT
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_location = 'Tampa, FL';
```

### 2. Filtering by Work Schedule
Filters the dataset to display only standard full-time employment opportunities.
```sql
SELECT
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_schedule_type = 'Full-time';
```

### 3. Filtering with Exclusion Operators
Uses the non-equality operator (`<>`) to pull all job configurations except part-time listings.
```sql
SELECT
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE 
    job_schedule_type <> 'Part-time';
```

### 4. Format Modifications (Aliasing)
Standardizes raw database column headers into cleaner naming conventions.
```sql
SELECT
    job_title_short AS job_title,
    job_location AS location,
    job_via AS online_platform,
    salary_year_avg AS salary
FROM
    job_postings_fact;
```

### 5. Multi-Metric Aggregations
Generates statistical totals for total salary investment and overall listing counts.
```sql
SELECT 
    SUM(salary_year_avg) AS salary_sum, 
    COUNT(*) AS count_rows 
FROM 
    job_postings_fact;
```

## 🚀 Execution Instructions
1. Open your database IDE (e.g., pgAdmin, DBeaver, VS Code).
2. Connect to your host database containing the `job_postings_fact` dataset.
3. Open a new SQL editor tab.
4. Copy and paste your chosen query, then click **Execute**.
