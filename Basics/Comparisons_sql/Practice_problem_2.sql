/*
In the job_postings_sact table get the job_id,job_title_short,job_location,job_via, and salary_year_avg colums.
Only return 'Full time job'
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
    job_schedule_type = 'Full-time'
