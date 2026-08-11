/*Only returns the contents that appear in both A and B*/

SELECT
    job_postings.job_id,
    job_postings.job_title,
    skills_to_job.skill_id,
    skills.skills

FROM
    job_postings_fact AS job_postings

INNER JOIN skills_job_dim AS skills_to_job ON job_postings.job_id = skills_to_job.job_id
INNER JOIN skills_dim AS skills ON skills_to_job.skill_id = skills.skill_id