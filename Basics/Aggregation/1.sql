/*
These functions compute a single result from input values
    SUM():Adds together all avlues in a spcific column.
    COUNT(): Counts the no of rows that match a specific criterion.
    AVG():Calculates the average value of a numeric column
    MAX(): Finds the maximu vslue in a set of values.
    MIN(): Finds the minimu value in a set of values
*/

SELECT
    SUM(salary_year_avg)
FROM
job_postings_fact