-- ## DATA MANIPULATION LANGUAGE

/* They are generally known by this key word:

- SIMPLE QUERIES
- ALIAS QUERIES
- LIMIT QUERIES
- ARITHMETIC QUERIES
- ORDERBY QUERIES
- GROUPBY QUERIES
- WHERE QUERIES
- IN QUERIES
- LIKE QUERIES
- AND QUERIES
- HAVING QUERIES
- CASE QUERIES
- SELECT INTO QUERIES

All this queries are selcted as the most common types of queries
*/
---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- SIMPLE CLAUSE QUERIES EXAMPLES

-- This code below will SELECT All the Columns form a **TABLE**, usersLearn
SELECT  * 
FROM usersLearn

-- This code below will SELECT Specific Columns form a **TABLE**, usersLearn  
SELECT names,salary 
FROM usersLearn

-- This code below will SELECT Individual Columns From Multiple Table form a **TABLES**, usersLearn1, usersLearn2
SELECT usersLearn.names, usersLearn2.age , usersLearn2.dept_name
FROM usersLearn
INNER JOIN usersLearn2
ON usersLearn.names = usersLearn2.names
ORDER BY usersLearn.names ASC

---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- ALIAS CLAUSE QUERIES EXAMPLES
-- This code below will add an ALIAS without the "AS" keyword for Multiple **TABLES**, usersLearn1, usersLearn2
SELECT TOP 5 u1.*, u2.RegionID
FROM usersLearn u1 
INNER JOIN usersLearn2 u2     
ON u1.RegionID = u2.RegionID 
ORDER BY RegionID


-- This code below will add an ALIAS with the "AS" keyword for Multiple **TABLES**, usersLearn1, usersLearn2
SELECT u1.*, u2.RegionID
FROM usersLearn AS u1 
INNER JOIN usersLearn2 AS u2     
ON u1.RegionID = u2.RegionID 
ORDER BY RegionID

/*
The ALIAS will shorten usersLearn1 to u1 and usersLearn2 to u2.
*/

---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- LIMIT CLAUSE QUERIES EXAMPLES
-- This code below will reduce the query output to only 100 rows for the **TABLE** usersLearn
SELECT  * 
FROM usersLearn
LIMIT 100

/*
This will limit the query to only 100 rows. It is advised to always use LIMIT to save `Memory Space`.
*/

---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- ARITHMETIC CLAUSE QUERIES EXAMPLES
-- This code below will select only top 2 rows from the **TABLE** usersLearn
SELECT TOP 5 *
FROM usersLearn

-- This code below will select only top 2 rows from the **TABLE** usersLearn


-- This code below will reduce the query output to only 100 rows for the **TABLE** usersLearn


-- This code below will reduce the query output to only 100 rows for the **TABLE** usersLearn


-- This code below will reduce the query output to only 100 rows for the **TABLE** usersLearn1


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- ORDERBY CLAUSE QUERIES EXAMPLES


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- WHERE CLAUSE QUERIES EXAMPLES


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- IN CLAUSE QUERIES EXAMPLES


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- LIKE CLAUSE QUERIES EXAMPLES


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- AND CLAUSE QUERIES EXAMPLES


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- HAVING CLAUSE QUERIES EXAMPLES

---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- CASE CLAUSE QUERIES EXAMPLES


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- SELECT INTO CLAUSE QUERIES EXAMPLES
-- This code below will populate a new  **TABLE**, with all existing columns in usersLearn and produce usersLearn1
SELECT *
INTO usersLearn1
FROM usersLearn

-- This code below will populate a new  **TABLE**, with some specific existing columns in usersLearn and produce usersLearn1
SELECT names, gender, department
INTO usersLearn1
FROM usersLearn

-- This code below will populate an empty new  **TABLE**, with all existing columns in usersLearn and produce usersLearnEmpty
SELECT *
INTO usersLearnEmpty
FROM usersLearn
WHERE 1 = 0

-- 

-- 

-- 

/*
The SELECT INTO statement allows us to create a table and populate it with data from an already existing table in a single statement. 
While copying the data into the new table from the existing old table we can choose to copy the entire data or selected columns from 
the existing table.
A SELECT INTO statement is a standalone SQL statement which cannot be appended into another SQL statement like 
INSERT, UPDATE, DELETE, SELECT etc. However, it can be combined with a JOIN or UNION while creating a new table using multiple tables.
*/