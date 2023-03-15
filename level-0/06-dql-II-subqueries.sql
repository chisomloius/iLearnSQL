-- ## DATA QUERY LANGUAGE: SUBQUERIES

/* They are generally known by this key word:

- SUBQUERIES WITHIN SELECT CLAUSE: the subquery is one of the expressions in the select statement. 
such cases a subquery is used with an aggregate function to fetch a value which forms part of the 
resultset.
- SUBQUERIES WITHIN FROM CLAUSE:when used in the from clause generates a resultset which acts as a 
table and from which columns can be added to the final resultset or combined with columns from 
another table through a JOIN in the final resultset. It is also called a derived table or inline view.
- SUBQUERIES WITHIN WHERE CLAUSE:the most common usage where a subquery is part of the where clause 
and returns a 
value or set of values for the outer query to work with. It is also called nested subqueries.
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- SUBQUERIES WITHIN SELECT CLAUSE
-- Example
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
-- Example
WHERE clause subquery
SELECT select_list FROM table_name WHERE (subquery);

-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn

SELECT u2.users_code_ID_id, u2.users_name, o.tot_val
FROM
(SELECT users_code_ID, SUM(users_order) tot_val
 FROM usersLearn1 group by cust_id) u1
INNER JOIN usersLearn2 u2 
ON u1.users_code_ID=u2.users_code_ID;

/*
Here the subquery in the FROM clause executes first and generates the list of users code id's and the total order 
value for each users_id (i.e. customer) with the help of the SUM aggregate function. 
This resultset then becomes one of the tables for the main query. The main query then creates a JOIN 
of the subquery generated table (aliased as o) with the usersLearn1 table on the common users_code_id column and produces 
the final result fetching users_code_id and users_name from the usersLearn2 table and tot_val (i.e. total order value) from the subquery generated table.
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- SUBQUERIES WITHIN WHERE CLAUSE
-- Example
FROM clause subquery
SELECT select_list FROM (subquery);
-- This code below will generate the required following result showing 
all orders received from the country of Phillipines with their users code id’s and dates of birth.


SELECT users_code_ID, users_DOB, users_order
FROM usersLearn1
WHERE users_code_ID IN
                (SELECT users_code_ID 
                 FROM usersLearn2
                 WHERE users_country='Phillipines')
ORDER BY users_order DESC;

/*
Here first the subquery will execute and return the list of users_code_ID for the country of Phillipines and 
then the outer main query will execute and display the corresponding information from the usersLearn1 table.
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------