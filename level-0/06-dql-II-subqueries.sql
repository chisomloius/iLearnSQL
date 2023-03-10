-- ## DATA MANIPULATION LANGUAGE

/* They are generally known by this key word:

- SUBQUERIES WITH IN operator and WHERE clause
- SUBQUERIES IN FROM CLAUSE
- SUBQUERIES IN 


Also known as the CRUD operators for developers.
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- INSERT SYNTAX EXAMPLES
-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn
SELECT * 
FROM usersLearn 
WHERE Headquarter IN (SELECT Headquarter                       
                      FROM ITCompanyInNepal                       
                      WHERE Headquarter = 'USA')

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- INSERT SYNTAX EXAMPLES
-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- INSERT SYNTAX EXAMPLES
-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------