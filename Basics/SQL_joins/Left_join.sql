/*
suppose you have tables A and B. 
Left join will return all the contents of table A and the contets from B that match a on
*/

SELECT
    job_postings.job_id,
    job_postings.job_title_short,
    job_postings.company_id,
    companies.company_id,
    companies.name

FROM
    job_postings_fact AS job_postings

LEFT JOIN company_dim AS companies ON
job_postings.company_id = companies.company_id