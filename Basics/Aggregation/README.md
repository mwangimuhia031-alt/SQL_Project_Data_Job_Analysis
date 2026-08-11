# SQL Data Analysis: Job Postings Exploitation

This repository contains SQL scripts designed to analyze job posting trends using aggregate functions. The primary focus is evaluating salary distributions and volume metrics from the core dataset.

## 📊 Features & Functions
The analysis utilizes standard SQL aggregate functions to summarize dataset attributes:
* **`SUM()`**: Calculates total combined metrics (e.g., total payroll).
* **`COUNT()`**: Quantifies the total number of records matching specific criteria.
* **`AVG()`**: Measures arithmetic means for numeric distributions.
* **`MAX()`**: Identifies peak data points within a subset.
* **`MIN()`**: Identifies baseline data points within a subset.

## 🗄️ Database Structure
The queries target the core fact table:
* **`job_postings_fact`**: Contains global job posting details, including tracking numbers, titles, locations, and salary data.

## 💻 SQL Queries

### 1. Total Salary Cost
Calculates the grand total of the `salary_year_avg` column across all available rows.
```sql
SELECT 
    SUM(salary_year_avg) 
FROM 
    job_postings_fact;
```

### 2. Multi-Metric Summary
Computes the total salary pool and the total number of job postings simultaneously, using explicit aliases for clean output mapping.
```sql
SELECT 
    SUM(salary_year_avg) AS salary_sum, 
    COUNT(*) AS count_rows 
FROM 
    job_postings_fact;
```

## 🚀 How to Run
1. Open your SQL client terminal or IDE (e.g., pgAdmin, DBeaver, VS Code).
2. Connect to your database instance containing the `job_postings_fact` table.
3. Copy any script from the queries section above into your query tool.
4. Execute the command to view the aggregated single-row output.
