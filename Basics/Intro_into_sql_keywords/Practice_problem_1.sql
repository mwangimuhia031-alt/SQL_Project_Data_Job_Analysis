/*
Get the unique job locations in the job_postings_fact table.Order in the alphabeticl order.
*/

SELECT DISTINCT
    job_location

FROM
    job_postings_fact

ORDER BY
    job_location 