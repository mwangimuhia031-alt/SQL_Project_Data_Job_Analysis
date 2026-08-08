/*
Question: What are the top paying analyst jobs?
-Identify the top 20 highest-paying data analyst roles that are available remotely.
-Focus with job postings with specified salaries(remove null)
-why? Highlight the top paying opportunities for dta analyst
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
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
/* Result
"job_id","job_title","job_location","job_schedule_type","salary_year_avg","job_posted_date","company_name"
226942,"Data Analyst","Anywhere","Full-time","650000.0","2023-02-20 15:13:33","Mantys"
547382,"Director of Analytics","Anywhere","Full-time","336500.0","2023-08-23 12:04:42","Meta"
552322,"Associate Director- Data Insights","Anywhere","Full-time","255829.5","2023-06-18 16:03:12","AT&T"
99305,"Data Analyst, Marketing","Anywhere","Full-time","232423.0","2023-12-05 20:00:40","Pinterest Job Advertisements"
502610,"Lead Business Intelligence Engineer","Anywhere","Full-time","220000.0","2023-08-29 18:26:36","Noom"
1021647,"Data Analyst (Hybrid/Remote)","Anywhere","Full-time","217000.0","2023-01-17 00:17:23","Uclahealthcareers"
112859,"Manager II, Applied Science - Marketplace Dynamics","Anywhere","Full-time","214500.0","2023-12-18 08:02:37","Uber"
168310,"Principal Data Analyst (Remote)","Anywhere","Full-time","205000.0","2023-08-09 11:00:01","SmartAsset"
998056,"Analyst","Anywhere","Full-time","200000.0","2023-10-04 11:01:48","Multicoin Capital"
1069582,"Analyst","Anywhere","Full-time","200000.0","2023-12-21 13:01:17","Multicoin Capital"
17458,"Senior Economy Designer","Anywhere","Full-time","190000.0","2023-06-21 18:11:35","Harnham"
731368,"Director, Data Analyst - HYBRID","Anywhere","Full-time","189309.0","2023-12-07 15:00:13","Inclusively"
310660,"Principal Data Analyst, AV Performance Analysis","Anywhere","Full-time","189000.0","2023-01-05 00:00:25","Motional"
1749593,"Principal Data Analyst","Anywhere","Full-time","186000.0","2023-07-11 16:00:05","SmartAsset"
1638595,"Senior Data Analyst","Anywhere","Full-time","185000.0","2023-08-15 07:00:00","Patterned Learning AI"
387860,"ERM Data Analyst","Anywhere","Full-time","184000.0","2023-06-09 08:01:04","Get It Recruit - Information Technology"
564064,"Sr Applied Scientist, Special Projects","Anywhere","Full-time","184000.0","2023-10-16 07:23:56","Uber"
1501155,"Senior Applied Scientist - Delivery","Anywhere","Full-time","184000.0","2023-07-26 07:02:59","Uber"
813346,"Senior Data Analyst, GTM (South Bay, CA or Remote)","Anywhere","Full-time","181000.0","2023-05-27 06:00:27","Zoom Video Communications"
511999,"Senior Data Analyst, Bot Management and Anti-Fraud","Anywhere","Full-time","178500.0","2023-02-01 20:01:14","Fastly"

*/