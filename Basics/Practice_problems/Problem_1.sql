/*
Get the job details for both 'Data Analyst' or 'Business Analyst positions.'
For 'Data-Analyst', I want jobs only >$100k
For 'Business Analyst',  I onlt want jobs > $70k

Only include  jobs located either : 'Boston, MA' or 'Anywhere'
*/

SELECT
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_location IN ('Boston, MA', 'Anywhere') AND
    (
    (job_title_short = 'Data Analyst' AND salary_year_avg > 100000) OR
    (job_title_short = 'Business Analyst' AND salary_year_avg > 70000)
    )