/*It is the opposite of left join*/


SELECT
    job_postings.job_id,
    job_postings.job_title_short,
    job_postings.company_id,
    companies.company_id,
    companies.name

FROM
    job_postings_fact AS job_postings

RIGHT JOIN company_dim AS companies ON
job_postings.company_id = companies.company_id