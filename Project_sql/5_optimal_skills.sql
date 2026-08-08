/*
Question: What is the most optimal skill to learn?
-Identify skills in high demand and associated with high average salaries for analyst roles.
Concentrates on remote positions with specified salaries.
-Put both 3 and 4 inside of a CTE
*/

WITH skills_demand AS (
    SELECT
        skills_dim.skill_id, 
        skills_dim.skills,
        COUNT(skills_job_dim.job_id) AS demand_count
    FROM
        job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short LIKE '%Analyst%' 
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home = true
    GROUP BY
        skills_dim.skill_id,
        skills_dim.skills
), average_salary AS (
    SELECT 
        skills_job_dim.skill_id, -- Fixed column name
        ROUND(AVG(salary_year_avg), 2) AS avg_salary
    FROM
        job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short LIKE '%Analyst%' 
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home = true
    GROUP BY
        skills_job_dim.skill_id -- Fixed column name
)

SELECT 
    skills_demand.skill_id,   -- Fixed table alias (added 's')
    skills_demand.skills,     -- Fixed table alias (added 's')
    demand_count,
    avg_salary
FROM
    skills_demand
INNER JOIN average_salary ON skills_demand.skill_id = average_salary.skill_id

WHERE
    demand_count > 10 -- Filter for skills with more than one job posting    
ORDER BY
    avg_salary DESC,
    demand_count DESC
   
LIMIT 25