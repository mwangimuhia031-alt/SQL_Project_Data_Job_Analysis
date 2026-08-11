/*
In the job_postings_fact table get the columns job_id,job_title_short,job_location,job_via and salary_year_avg columns. 
And only look at rows where job_title_short is Data Engineer: 
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
    job_title_short = 'Data Engineer'

