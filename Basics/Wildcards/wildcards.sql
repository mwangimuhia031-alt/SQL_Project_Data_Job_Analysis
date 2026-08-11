/*
wildcards (LIKE, %, _ )are used to sunstitute one or more characters ina string
They are used with the LIKE operator
All of this is used i the where clause

% - represents zero,one or more characters.
_ -representsnone single character
*/


SELECT
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM
    job_postings_fact

WHERE
    job_title LIKE '%Analyst%'