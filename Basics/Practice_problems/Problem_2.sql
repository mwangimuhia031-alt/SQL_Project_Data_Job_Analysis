/*
Look for non-senior data analyst or business analyst roles
Get the job title, location and average salary
*/
SELECT
    job_title,
    job_location AS location,
    salary_year_avg AS salary

FROM
    job_postings_fact

WHERE
    (job_title LIKE '%Data%' OR job_title LIKE '%Business%') AND
    job_title LIKE '%Analyst%' AND
    job_title NOT LIKE '%Senior%'