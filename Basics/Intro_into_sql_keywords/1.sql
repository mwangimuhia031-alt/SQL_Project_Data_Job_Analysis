
/*
SELECT-identifies the colums from the database
FROM- Idenifies the table we are going to connect to.
* - Special command to select all the columns
LIMIT - As the name suggest limits to a specified number of rows.
The indentaion is a best practice
*/
SELECT *
FROM 
    job_postings_fact

LIMIT 20

/*
Result
"job_id","company_id","job_title_short","job_title","job_location","job_via","job_schedule_type","job_work_from_home","search_location","job_posted_date","job_no_degree_mention","job_health_insurance","job_country","salary_rate","salary_year_avg","salary_hour_avg"
0,0,"Data Analyst","Marketing Data Analyst","Anywhere","via LinkedIn","Full-time",1,"Serbia","2023-09-25 17:46:06","","","Serbia","","",""
55,1,"Cloud Engineer","Storage and Virtualization Engineer","Kuwait City, Kuwait","via Trabajo.org","Full-time","","Kuwait","2023-07-30 17:49:18",1,"","Kuwait","","",""
66,2,"Data Analyst","Data Analyst et Scientist F/H","Paris, France","via Emplois Trabajo.org","Full-time","","France","2023-07-28 17:28:01","","","France","","",""
76,3,"Data Engineer","Data Engineer","Denver, CO","via LinkedIn","Contractor","","Illinois, United States","2023-04-03 17:14:45","","","United States","hour","","70.0"
81,4,"Data Engineer","Data Engineer","Anywhere","via LinkedIn","Contractor",1,"Canada","2023-03-25 17:25:20","","","Canada","","",""
105,5,"Data Analyst","Data Analyst","Bangkok, Thailand","via Jobtopgun.com","Full-time","","Thailand","2023-01-29 17:16:56","","","Thailand","","",""
106,6,"Data Engineer","Data Lead Engineer (with strong Python) - Remote - Latin America","Anywhere","via Jobgether","Full-time",1,"Nicaragua","2023-08-13 17:37:05","","","Nicaragua","","",""
116,7,"Senior Data Engineer","Senior Data Engineer","New York, NY","via Melga","Full-time","","Florida, United States","2023-02-19 17:11:17","",1,"United States","","",""
122,8,"Data Analyst","Full Time Data Analyst","Chicago, IL","via Trabajo.org","Full-time","","Illinois, United States","2023-10-19 17:01:36","",1,"United States","","",""
134,9,"Data Engineer","Data Engineer Remote / Telecommute Jobs","Anywhere","via Clearance Jobs","Full-time",1,"Georgia","2023-04-27 17:38:56",1,"","United States","","",""
139,10,"Data Engineer","Lead Data Engineer","Anywhere","via LinkedIn","Full-time",1,"Texas, United States","2023-06-04 17:27:58",1,1,"United States","","",""
145,11,"Data Engineer","Data Platform Engineer","Singapore","via BeBee Singapore","Full-time","","Singapore","2023-07-13 17:13:07",1,"","Singapore","","",""
148,12,"Data Scientist","Data Science Manager (Bangkok based, relocation provided)","Ho Chi Minh City, Vietnam","via LinkedIn","Full-time","","Vietnam","2023-09-26 17:12:46","","","Vietnam","","",""
167,13,"Data Engineer","Data Engineer","Atlanta, GA","via LinkedIn","Full-time","","Florida, United States","2023-04-13 17:14:34","","","United States","","",""
177,14,"Senior Data Engineer","SENIOR STAFF DATA ENGINEER","Redwood City, CA","via Snagajob","Full-time","","Sudan","2023-07-23 18:22:41","","","Sudan","","",""
187,15,"Data Engineer","Sr. Data Engineer","Copper Canyon, TX","via LinkedIn","Full-time","","Sudan","2023-07-08 17:37:01","","","Sudan","","",""
205,16,"Data Analyst","Data Analyst Hybrid Remote","Denmark","via Trabajo.org","Full-time","","Denmark","2023-05-13 17:57:40","","","Denmark","","",""
217,17,"Data Analyst","Data Analyst","Anywhere","via LinkedIn","Full-time",1,"Poland","2023-04-12 17:48:34",1,"","Poland","","",""
220,18,"Senior Data Engineer","Senior Data Engineer (Kafka)","United States","via LinkedIn","Full-time","","Sudan","2023-05-15 18:40:02","","","Sudan","year","325000.0",""
248,19,"Data Engineer","Data Engineer - 15602","Anywhere","via LinkedIn","Full-time",1,"Illinois, United States","2023-10-21 17:08:19","",1,"United States","","",""

*/