SELECT
    SUM(salary_year_avg) AS salary_sum,
    COUNT(*) AS count_rows
FROM
job_postings_fact