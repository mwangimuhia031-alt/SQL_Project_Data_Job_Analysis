# SQL JOINs Demonstration Project

This project contains a foundational SQL script demonstrating the mechanics and practical use cases of **INNER JOIN**, **LEFT JOIN**, and **RIGHT JOIN**. It utilizes a relational database structure containing job postings, skills, and company metadata to clearly show how different joins alter query results.

---

## 💻 SQL Script

```sql
/* 
===============================================================================
1. INNER JOIN (Intersection)
Returns only the rows that have matching values in both tables.
===============================================================================
*/
SELECT 
    job_postings.job_id, 
    job_postings.job_title, 
    skills_to_job.skill_id, 
    skills.skills 
FROM job_postings_fact AS job_postings 
INNER JOIN skills_job_dim AS skills_to_job 
    ON job_postings.job_id = skills_to_job.job_id 
INNER JOIN skills_dim AS skills 
    ON skills_to_job.skill_id = skills.skill_id;

/* 
===============================================================================
2. LEFT JOIN (Left Outer Join)
Returns all records from the left table, and matched records from the right table.
===============================================================================
*/
SELECT 
    job_postings.job_id, 
    job_postings.job_title_short, 
    job_postings.company_id, 
    companies.company_id, 
    companies.name 
FROM job_postings_fact AS job_postings 
LEFT JOIN company_dim AS companies 
    ON job_postings.company_id = companies.company_id;

/* 
===============================================================================
3. RIGHT JOIN (Right Outer Join)
Returns all records from the right table, and matched records from the left table.
===============================================================================
*/
SELECT 
    job_postings.job_id, 
    job_postings.job_title_short, 
    job_postings.company_id, 
    companies.company_id, 
    companies.name 
FROM job_postings_fact AS job_postings 
RIGHT JOIN company_dim AS companies 
    ON job_postings.company_id = companies.company_id;
```

---

## 📊 Database Schema Summary

The queries interact with four tables:
* **`job_postings_fact`**: The core fact table containing data about job vacancies.
* **`company_dim`**: A dimension table storing company profiles and names.
* **`skills_dim`**: A lookup table mapping unique skill IDs to skill names (e.g., Python, SQL).
* **`skills_job_dim`**: A many-to-many bridge table linking `job_id` to `skill_id`.

---

## 🧠 Underlying Logic Explained

SQL JOINs use a relational logic based on **Set Theory** to combine data from different tables using a shared column called a **key**. 

### 1. The Key Matching Mechanism
* Database engines scan the tables to find rows where values in the `ON` clause are identical.
* For example, `ON tableA.id = tableB.id` evaluates to true only when the specific IDs match perfectly.

### 2. Handling Missing Relationships (NULLs)
* When data exists in one table but has no partner in the linked table, relational databases use **`NULL`**.
* `NULL` serves as a placeholder indicating missing or unknown values.

### 3. Visualizing Data Behaviors

| Join Type | Venn Diagram Representation | Data Retention Strategy |
| :--- | :--- | :--- |
| **INNER JOIN** | **Intersection Only** | Drops unmatched records from both sets. |
| **LEFT JOIN** | **Full Left Circle** | Preserves all left rows; fills missing right sides with `NULL`. |
| **RIGHT JOIN** | **Full Right Circle** | Preserves all right rows; fills missing left sides with `NULL`. |

---

## 🔍 Detailed Query Breakdown

### 🤝 Query 1: INNER JOIN
* **Logic:** Evaluates the condition `job_postings.job_id = skills_to_job.job_id` AND `skills_to_job.skill_id = skills.skill_id`.
* **Behavior:** It extracts only the shared data intersection. 
* **Business Outcome:** You see a list of jobs paired directly with their required skills. If a job posting requires zero skills, it vanishes from the results entirely.

### ↩️ Query 2: LEFT JOIN
* **Logic:** Prioritizes the table declared immediately after the `FROM` keyword (`job_postings_fact`).
* **Behavior:** It checks the `company_dim` for a matching `company_id`.
* **Business Outcome:** You see every single job posting. If a job was posted anonymously without an assigned company profile, the company name column outputs as `NULL`.

### ↪️ Query 3: RIGHT JOIN
* **Logic:** Prioritizes the table declared immediately after the `RIGHT JOIN` keyword (`company_dim`).
* **Behavior:** It checks the `job_postings_fact` for any jobs linked to that company.
* **Business Outcome:** You see every company stored in your database. If a startup has an account but has not posted any jobs yet, the job title column outputs as `NULL`.

---

## 🚀 How to Run This Script

1. Open your SQL client or DBMS (e.g., PostgreSQL, MySQL, DBeaver).
2. Connect to the database containing your job market schema.
3. Copy and paste the script above into a blank query editor layout.
4. Execute each query block independently to review individual result sets.
