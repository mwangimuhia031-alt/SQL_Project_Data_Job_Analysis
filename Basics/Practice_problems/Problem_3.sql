/*
Calculate the current month total earnings per project.
Calculate a scenario wher ethe ourly rate increases by $5
*/

SELECT
    project_id,
    hours_rate AS rate_original,
    hours_rate + 5 AS rat