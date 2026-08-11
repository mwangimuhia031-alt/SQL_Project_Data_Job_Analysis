/*
As- renames a column in a table to a temporary name to make the column names more readable.
*/

SELECT
    job_title_short AS job_title,
    job_location AS location,
    job_via AS online_platform,
    salary_year_avg AS salary
FROM
    job_postings_fact