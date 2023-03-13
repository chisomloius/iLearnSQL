-- ## DATA MANIPULATION LANGUAGE

/* They are generally known by this key word:

- SUBQUERIES WITHIN SELECT CLAUSE
- SUBQUERIES WITHIN FROM CLAUSE
- SUBQUERIES WITHIN WHERE CLAUSE


Also known as the CRUD operators for developers.
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- SUBQUERIES WITHIN SELECT CLAUSE
--
SELECT clause subquery
SELECT select_list, (subquery) FROM table_name;
-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn
SELECT * 
FROM usersLearn 
WHERE Headquarter IN (SELECT Headquarter                       
                      FROM ITCompanyInNepal                       
                      WHERE Headquarter = 'USA')

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- SUBQUERIES WITHIN FROM CLAUSE
--
WHERE clause subquery
SELECT select_list FROM table_name WHERE (subquery);
-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- SUBQUERIES WITHIN WHERE CLAUSE
--
FROM clause subquery
SELECT select_list FROM (subquery);
-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------