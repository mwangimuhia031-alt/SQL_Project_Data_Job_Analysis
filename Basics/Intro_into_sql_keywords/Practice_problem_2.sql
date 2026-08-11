/*
In the job_postings_fact table get the colums job_id, Job_title_short,job_location, and job_via columns.
Order by the job_location.
*/
SELECT
    job_id,
    job_title_short,
    job_location,
    job_via
FROM
    job_postings_fact
ORDER BY
    job_location ASC
