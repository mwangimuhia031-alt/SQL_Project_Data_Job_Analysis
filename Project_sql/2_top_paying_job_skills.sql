/*
Question: What skills are required for the top paying analyst jobs.
-Use the top 20 highest paying data analyst jobs from the 1st query
-Add the specific skills required for these roles.
-Use a CTE for this query
-Connect/join skills_job_dim and skills_dim
*/

WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        job_location,
        job_schedule_type,
        salary_year_avg,
        name AS company_name

    FROM
        job_postings_fact

    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id

    WHERE 
        job_title_short LIKE '%Analyst%' AND 
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 20
)

SELECT 
    top_paying_jobs.*,
    skills
FROM
    top_paying_jobs

INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

ORDER BY --for best practices
    salary_year_avg DESC
LIMIT 20

/*
"job_id","job_title","job_location","job_schedule_type","salary_year_avg","company_name","skills"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","sql"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","python"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","r"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","azure"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","databricks"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","aws"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","pandas"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","pyspark"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","jupyter"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","excel"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","tableau"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","power bi"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","AT&T","powerpoint"
99305,"Data Analyst, Marketing","Anywhere","Full-time","232423.0","Pinterest Job Advertisements","sql"
99305,"Data Analyst, Marketing","Anywhere","Full-time","232423.0","Pinterest Job Advertisements","python"
99305,"Data Analyst, Marketing","Anywhere","Full-time","232423.0","Pinterest Job Advertisements","r"
99305,"Data Analyst, Marketing","Anywhere","Full-time","232423.0","Pinterest Job Advertisements","hadoop"
99305,"Data Analyst, Marketing","Anywhere","Full-time","232423.0","Pinterest Job Advertisements","tableau"
502610,"Lead Business Intelligence Engineer","Anywhere","Full-time","220000.0","Noom","sql"
502610,"Lead Business Intelligence Engineer","Anywhere","Full-time","220000.0","Noom","python"

*/