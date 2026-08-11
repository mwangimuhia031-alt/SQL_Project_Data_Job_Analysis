/*
In the job_postings_fact table get the job_id,job_title_short,job_location,job_via, and salary_year_avg columns.
Only return rows where location is 'Tamp, FL'
*/
SELECT
    job_id,
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_location = 'Tampa, FL'