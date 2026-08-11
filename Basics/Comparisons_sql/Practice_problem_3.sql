/*
In the job_postings_fact table get the job_id,job_title_short,job_location,job_via and salary_year_avg colums.
Only look at the jobs that are not 'Part-time.
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
    job_schedule_type <> 'Part-time'