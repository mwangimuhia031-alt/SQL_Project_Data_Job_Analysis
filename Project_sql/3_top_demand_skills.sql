/*
Question: What are the most in demand skills for an analyst.
-Join job postings to inner join table similar to query 2
-Identify the top 10 in demand skills for a data analyst
-Focus on all job postings.
Do an aggregation method =  COUNT
*/


SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short LIKE '%Analyst%' AND
    job_work_from_home = true
GROUP BY
    skills

ORDER BY
    demand_count DESC

LIMIT 10
/*
"skills","demand_count"
"sql","10281"
"excel","6294"
"python","5930"
"tableau","5472"
"power bi","3625"
"r","2910"
"sas","2476"
"looker","1362"
"powerpoint","1220"
"azure","1185"

*/