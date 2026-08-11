SELECT
    job_title_short,
    job_location,
    job_via,
    salary_year_avg

FROM 
    job_postings_fact

WHERE
    job_title_short = 'Data Analyst'

ORDER BY
    salary_year_avg ASC

LIMIT 20

/*
"job_title_short","job_location","job_via","salary_year_avg"
"Data Analyst","Anywhere","via ZipRecruiter","25000.0"
"Data Analyst","Philippines","via Ai-Jobs.net","25920.0"
"Data Analyst","Florence, SC","via Talent.com","26444.0"
"Data Analyst","Mexico, IN","via LinkedIn","30000.0"
"Data Analyst","United Kingdom","via LinkedIn","30000.0"
"Data Analyst","United Kingdom","via LinkedIn","30000.0"
"Data Analyst","India","via Ai-Jobs.net","32400.0"
"Data Analyst","New Zealand","via Infosec-Jobs.com","32400.0"
"Data Analyst","Dallas, TX","via Dice","32500.0"
"Data Analyst","Bethlehem, PA","via Indeed","32516.0"
"Data Analyst","Indianapolis, IN","via Indeed","33500.0"
"Data Analyst","Alachua, FL","via Indeed","34288.57421875"
"Data Analyst","Lytle, TX","via Indeed","34769.0"
"Data Analyst","Gainesville, FL","via Indeed","35000.0"
"Data Analyst","Gainesville, FL","via ZipRecruiter","35000.0"
"Data Analyst","Gainesville, FL","via Indeed","35000.0"
"Data Analyst","Alexandria, VA","via Association CareerHQ - ASAE","35000.0"
"Data Analyst","Piscataway, NJ","via Indeed","35000.0"
"Data Analyst","Anywhere","via LinkedIn Malta","35000.0"
"Data Analyst","Atlanta, GA","via BeBee","35000.0"

*/