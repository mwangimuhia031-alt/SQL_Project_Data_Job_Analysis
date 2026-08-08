/*
Question: What are the top payng skills based on salary?
-Look at the average salary associated with each skill for Data Analyst positions.
-
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 2) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = true
GROUP BY
    skills

ORDER BY
    avg_salary DESC
LIMIT 30

/*
"skills","avg_salary"
"pyspark","208172.25"
"bitbucket","189154.50"
"watson","160515.00"
"couchbase","160515.00"
"datarobot","155485.50"
"gitlab","154500.00"
"swift","153750.00"
"jupyter","152776.50"
"pandas","151821.33"
"golang","145000.00"
"elasticsearch","145000.00"
"numpy","143512.50"
"databricks","141906.60"
"linux","136507.50"
"kubernetes","132500.00"
"atlassian","131161.80"
"twilio","127000.00"
"airflow","126103.00"
"scikit-learn","125781.25"
"jenkins","125436.33"
"notion","125000.00"
"scala","124903.00"
"postgresql","123878.75"
"gcp","122500.00"
"microstrategy","121619.25"
"crystal","120100.00"
"go","115319.89"
"confluence","114209.91"
"db2","114072.13"
"hadoop","113192.57"

*/