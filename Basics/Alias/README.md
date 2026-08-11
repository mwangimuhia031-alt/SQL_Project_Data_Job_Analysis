# SQL Basics: Column Aliasing

This repository contains fundamental SQL scripts demonstrating how to use the `AS` keyword to improve data readability. The queries modify output column headers temporarily without changing the underlying database schema.

## 🔑 Core Concept

### The `AS` Keyword
The `AS` command renames a column or table with a temporary alias. It makes the final query results much easier for non-technical users and data tools to interpret.

## 🗄️ Database Structure

The project queries a single core table:
* **`job_postings_fact`**: A database table storing job vacancy details, locations, posting sources, and compensation data.

## 💻 SQL Script

```sql
/*
The AS keyword renames columns to make the output headers more readable.
*/

SELECT
    job_title_short AS job_title,
    job_location AS location,
    job_via AS online_platform,
    salary_year_avg AS salary
FROM
    job_postings_fact;
```

### Column Mapping Changes
* `job_title_short` becomes **`job_title`**
* `job_location` becomes **`location`**
* `job_via` becomes **`online_platform`**
* `salary_year_avg` becomes **`salary`**

## 🚀 How to Run
1. Open your SQL client terminal or IDE (e.g., pgAdmin, DBeaver, VS Code).
2. Connect to the database containing the `job_postings_fact` table.
3. Paste the script into your query editor.
4. Run the query to see the cleanly labeled data grid output.
