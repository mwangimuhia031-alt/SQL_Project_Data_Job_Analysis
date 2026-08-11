/*
WHERE - sets a condition for the query to filter out the query.
It is always after FROM 
'..' are essential
*/

SELECT
    job_title_short,
    job_location,
    job_via,
    salary_year_avg

FROM 
    job_postings_fact

WHERE
    job_title_short = 'Data Analyst'

LIMIT 20
    
/*
Result
"job_title_short","job_location","job_via","salary_year_avg"
"Data Analyst","Anywhere","via LinkedIn",""
"Data Analyst","Paris, France","via Emplois Trabajo.org",""
"Data Analyst","Bangkok, Thailand","via Jobtopgun.com",""
"Data Analyst","Chicago, IL","via Trabajo.org",""
"Data Analyst","Denmark","via Trabajo.org",""
"Data Analyst","Anywhere","via LinkedIn",""
"Data Analyst","Wyoming, MI","via BeBee",""
"Data Analyst","London, UK","via My Valley Jobs Today",""
"Data Analyst","Grasleben, Germany","via LinkedIn",""
"Data Analyst","Singapore","via BeBee Singapore",""
"Data Analyst","Pasig, Metro Manila, Philippines","via LinkedIn",""
"Data Analyst","Schönefeld, Germany","via BeBee Deutschland",""
"Data Analyst","Atlanta, GA","via Trabajo.org",""
"Data Analyst","Lisbon, Portugal","via BeBee Portugal",""
"Data Analyst","Anywhere","via LinkedIn",""
"Data Analyst","Anywhere","via LinkedIn",""
"Data Analyst","Tampa, FL","via Foot Locker Careers",""
"Data Analyst","Frankfurt, Germany","via LinkedIn",""
"Data Analyst","Atlanta, GA","via Indeed",""
"Data Analyst","Miami, FL","via Trabajo.org",""

*/