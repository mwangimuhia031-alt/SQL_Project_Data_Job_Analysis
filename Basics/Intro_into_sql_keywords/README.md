# SQL Query Progression Guide

This repository contains SQL queries designed to extract and analyze data from the `job_postings_fact` table. The queries progress from basic data discovery to targeted data extraction.

---

## 📂 Table of Contents
1. [Overview](#-overview)
2. [Query 1: Unique Job Locations](#-query-1-unique-job-locations)
3. [Query 2: Core Job Information](#-query-2-core-job-information)
4. [Query 3: Filtered Roles and Salaries](#-query-3-filtered-roles-and-salaries)
5. [Database Schema Context](#-database-schema-context)

---

## 🔍 Overview

The queries demonstrate three fundamental SQL concepts:
* **De-duplication:** Finding unique values.
* **Sorting:** Organizing records alphabetically.
* **Filtering:** Extracting precise segments of data.

---

## 📍 Query 1: Unique Job Locations

This query identifies every unique geographical location available in the dataset. 

```sql
SELECT DISTINCT job_location 
FROM job_postings_fact 
ORDER BY job_location
```

### How It Works
* `DISTINCT` eliminates duplicate rows to show each location exactly once.
* `ORDER BY` automatically sorts the unique locations alphabetically from A to Z.

---

## 📋 Query 2: Core Job Information

This query extracts structural information for every job posting and groups them by location.

```sql
SELECT job_id, job_title_short, job_location, job_via 
FROM job_postings_fact 
ORDER BY job_location ASC
```

### How It Works
* Retrieves the primary key (`job_id`) and the abbreviated job title.
* Includes `job_via` to see which platform hosted the posting.
* Uses `ASC` to explicitly sort the entire list by location in ascending order.

---

## 💰 Query 3: Filtered Roles and Salaries

This query isolates average yearly salaries specifically for Data Engineer positions.

```sql
SELECT job_id, job_title_short, job_location, job_via, salary_year_avg 
FROM job_postings_fact 
WHERE job_title_short = 'Data Engineer'
```

### How It Works
* `WHERE` filters out all rows except those where the title exactly matches 'Data Engineer'.
* Adds the `salary_year_avg` column to analyze financial data for this specific role.

---

## 🗄️ Database Schema Context

Based on these queries, the `job_postings_fact` table contains the following columns:

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `job_id` | Integer / ID | Unique identifier for each posting |
| `job_title_short` | Text / String | Standardized, short-form job title |
| `job_location` | Text / String | Geographic location of the job |
| `job_via` | Text / String | The source platform of the listing |
| `salary_year_avg`| Numeric / Float | The calculated average annual salary |
