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

/*
"skill_id","skills","demand_count","avg_salary"
93,"pandas","13","146476.31"
75,"databricks","19","134042.95"
26,"c","17","115614.09"
8,"go","43","115606.50"
80,"snowflake","64","115597.33"
77,"bigquery","23","115317.39"
97,"hadoop","29","114076.40"
74,"azure","42","113137.61"
76,"aws","38","112957.99"
185,"looker","86","112927.55"
2,"nosql","19","108755.66"
4,"java","25","108227.98"
194,"ssis","18","107945.86"
79,"oracle","53","107585.25"
234,"confluence","16","107113.06"
1,"python","328","106770.93"
233,"jira","32","105583.06"
13,"c++","15","105569.37"
187,"qlik","21","105454.79"
5,"r","197","104688.25"
182,"tableau","337","103820.61"
184,"dax","13","103461.54"
10,"html","13","102483.85"
61,"sql server","47","102272.91"
197,"ssrs","17","101983.85"


*/