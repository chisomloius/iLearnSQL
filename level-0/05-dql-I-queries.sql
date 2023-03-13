-- ## DATA MANIPULATION LANGUAGE

/* The major queries types are:

- SIMPLE QUERIES
- ALIAS QUERIES
- LIMIT QUERIES
- NUMERING QUERIES
- WHERE QUERIES
- GROUP BY QUERIES
- ORDER BY QUERIES
- HAVING QUERIES
- LIKE QUERIES
- LOGIC (OR/AND/NOT/NULL) QUERIES
- IN QUERIES
- CASE QUERIES
- SELECT INTO QUERIES

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
-- NUMBERING CLAUSE QUERIES EXAMPLES
-- This code below will select only top 2 rows from the **TABLE** usersLearn
SELECT TOP 5 *
FROM usersLearn

-- This code below will select only top 50% rows from the **TABLE** usersLearn
SELECT TOP 50 PERCENT * 
FROM usersLearn

-- This code below will TIES returns the rows which are matched the values in the last rows of the **TABLE** usersLearn
SELECT TOP 4 WITH TIES *
FROM usersLearn
ORDER BY code_ID DESC

-- This code below will return only unique records rows from the **TABLE** usersLearn
SELECT DISTINCT age
FROM usersLearn

-- This code below will return the total number of unique records use from the **TABLE** usersLearn
SELECT COUNT (DISTINCT age) AS 'Employee Age'
FROM usersLearn;

-- This code below will skip N1 rows and take next N2 rows in **TABLE** usersLearn
It enables you to skip N1 rows and take next N2 rows
SELECT * 
FROM usersLearn 
ORDER BY users_id
OFFSET 50 ROWS FETCH NEXT 10 ROWS ONLY

-- This code below will use OFFSET without fetch to just skip first 50 rows in **TABLE** usersLearn
SELECT * 
FROM usersLearn 
ORDER BY users_id
OFFSET 50 ROWS

/*
The OFFSET clause is the mandatory clause in the combination and follows the ORDER BY clause. 
The FETCH clause is optional and follows the OFFSET clause. Both the clauses take the number of rows as an argument. 
The number of rows specified with the OFFSET clause indicates the number of rows that must be skipped in the resultset
 or the number of rows after which the resultset should begin.
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- WHERE CLAUSE QUERIES EXAMPLES
-- This code below will return records where data is greater than the conditions in the **TABLE** usersLearn
SELECT * 
FROM usersLearn
WHERE DOB > '2018-01-01';

-- This code below will return records where data is greater than the two conditions in the **TABLES** usersLearn1, usersLearn2
SELECT u1.id, u1.names, u2.names division, u1.salary
FROM usersLearn1 u1
INNER JOIN usersLearn2 u2
ON u1.div=u2.id
WHERE u1.sex='F' AND u1.salary>=50000.00

-- This code below will UPDATE records where data with the conditions is true in the **TABLE** usersLearn
UPDATE usersLearn
SET salary = 30000
WHERE salary <= 30000;

-- This code below will DELETE records where data with the conditions is true in the **TABLE** usersLearn
DELETE FROM usersLearn
WHERE age=302

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- LIKE CLAUSE QUERIES EXAMPLES
-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn
WHERE users_comment LIKE 'w%'

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_email LIKE '%@gmail.com'

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE first_name LIKE '_a%'

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE names LIKE '[acl]%'

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE names LIKE '[a-l]%'

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE first_name LIKE '[^acl]%';

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE first_name LIKE '[^a-l]%';

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE customer_comment LIKE ('%15!%%') ESCAPE '!';

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.T * 
FROM usersLearn 
WHERE customer_email NOT LIKE '%gmail.com';

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
UPDATE usersLearn 
SET customer_comment=NULL 
WHERE customer_email like '%yahoo%';

-- This code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
DELETE 
FROM usersLearn 
WHERE customer_email like '%yahoo%';


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- AND/OR/NOT/NULL CLAUSE QUERIES EXAMPLES
-- 


--


--


--


--
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- IN CLAUSE QUERIES EXAMPLES
-- 

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- GROUP BY CLAUSE QUERIES EXAMPLES
-- This code below will GROUP the records by locations, **TABLE** usersLearn
SELECT locations, count(users_id) 'no of users' 
FROM usersLearn 
GROUP BY locations;

-- This code below will GROUP the records by locations,code and ORDER BY locations, code from in the **TABLE** usersLearn
SELECT  code, 
        locations, 
        count(users_id) 'no of employees' 
FROM usersLearn
GROUP BY code, 
         locations
ORDER BY locations, 
         code;
/*
If you are specifying more columns in the select expression but not specified in the aggregate function then those column 
names should be mentioned in the GROUP BY clause
*/

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- HAVING CLAUSE QUERIES EXAMPLES
-- This code below will output users from the cities where the order size was more than 10 in the **TABLE** usersLearn
SELECT users_city, max(users_order) largest_order 
FROM usersLearn 
GROUP BY users_city 
HAVING max(users_order) > 10;

-- This code below will count is not equal to 5 using HAVING and outputs only those rows which satisfies the condition in the **TABLE** usersLearn
SELECT users_city, max(users_order) largest_order 
FROM usersLearn
GROUP BY users_city 
HAVING count(users_order) <> 5;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- ORDER BY CLAUSE QUERIES EXAMPLES
-- This code below will ORDER the records by age in ASCENDING ORDER, which is the default order **TABLE** usersLearn
SELECT  * 
FROM usersLearn 
ORDER BY age ASC;

-- This code below will ORDER the records by age in DESCENDING ORDER, **TABLE** usersLearn
SELECT  * 
FROM usersLearn 
ORDER BY age DESC;

-- This code below will ORDER the records by COLUMN 1 in ASCENDING ORDER and COLUMN  5 in DESCENDING ORDER in **TABLE** usersLearn
SELECT * 
FROM usersLearn
ORDER BY 1 ASC, 5 DESC;

-- This code below will ORDER the records by COLUMN 1 in ASCENDING ORDER and COLUMN  5 in DESCENDING ORDER in **TABLE** usersLearn
SELECT code, count(*)
FROM usersLearn
GROUP BY code;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- CASE CLAUSE QUERIES EXAMPLES
-- This code below will populate a new  **TABLE**, with all existing columns in usersLearn and produce usersLearn1
SELECT CASE DATEPART(WEEKDAY, GETDATE())     
            WHEN 1 THEN 'Sunday'     
            WHEN 2 THEN 'Monday'     
            WHEN 3 THEN 'Tuesday'     
            WHEN 4 THEN 'Wednesday'     
            WHEN 5 THEN 'Thursday'     
            WHEN 6 THEN 'Friday'     
            WHEN 7 THEN 'Saturday' 
        END

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

-- This code below will create a new table from multiple **TABLES**, with all existing columns in usersLearn and produce usersLearnNew
SELECT product_name, category_name
INTO usersLearnNew
FROM usersLearn1
LEFT JOIN usersLearn2
ON usersLearn1.cat_id=usersLearn2.cat_id;

/*
The SELECT INTO statement allows us to create a table and populate it with data from an already existing table in a single statement. 
While copying the data into the new table from the existing old table we can choose to copy the entire data or selected columns from 
the existing table.
A SELECT INTO statement is a standalone SQL statement which cannot be appended into another SQL statement like 
INSERT, UPDATE, DELETE, SELECT etc. However, it can be combined with a JOIN or UNION while creating a new table using multiple tables.
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------