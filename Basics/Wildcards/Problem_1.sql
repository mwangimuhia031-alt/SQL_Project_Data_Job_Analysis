/*In the company_dim table,find all the ames that include 'Tech' immediately followed by any single character.
Return the name of the column.
*/

SELECT 
    name
FROM
    company_dim
WHERE 
    name LIKE '_Tech%'