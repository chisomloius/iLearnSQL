-- ## DATA QUERY LANGUAGE: SIMPLE QUERIES

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

-- This users_code below will SELECT All the Columns form a **TABLE**, usersLearn
SELECT  * 
FROM usersLearn

-- This users_code below will SELECT Specific Columns form a **TABLE**, usersLearn  
SELECT users_name,users_salary
FROM usersLearn

-- This users_code below will SELECT Individual Columns From Multiple Table form a **TABLES**, usersLearn1, usersLearn2
SELECT usersLearn.users_name, usersLearn2.users_age , usersLearn2.dept_name
FROM usersLearn
INNER JOIN usersLearn2
ON usersLearn.users_name = usersLearn2.users_name
ORDER BY usersLearn.users_name ASC

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- ALIAS CLAUSE QUERIES EXAMPLES
-- This users_code below will add an ALIAS without the "AS" keyword for Multiple **TABLES**, usersLearn1, usersLearn2
SELECT TOP 5 u1.*, u2.RegionID
FROM usersLearn u1 
INNER JOIN usersLearn2 u2     
ON u1.RegionID = u2.RegionID 
ORDER BY RegionID


-- This users_code below will add an ALIAS with the "AS" keyword for Multiple **TABLES**, usersLearn1, usersLearn2
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
-- This users_code below will reduce the query output to only 100 rows for the **TABLE** usersLearn
SELECT  * 
FROM usersLearn
LIMIT 100

/*
This will limit the query to only 100 rows. It is advised to always use LIMIT to save `Memory Space`.
*/

---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- NUMBERING CLAUSE QUERIES EXAMPLES
-- This users_code below will select only top 2 rows from the **TABLE** usersLearn
SELECT TOP 5 *
FROM usersLearn

-- This users_code below will select only top 50% rows from the **TABLE** usersLearn
SELECT TOP 50 PERCENT * 
FROM usersLearn

-- This users_code below will TIES returns the rows which are matched the values in the last rows of the **TABLE** usersLearn
SELECT TOP 4 WITH TIES *
FROM usersLearn
ORDER BY users_code_ID DESC

-- This users_code below will return only unique records rows from the **TABLE** usersLearn
SELECT DISTINCT users_age
FROM usersLearn

-- This users_code below will return the total number of unique records use from the **TABLE** usersLearn
SELECT COUNT (DISTINCT users_age) AS 'Employee users_age'
FROM usersLearn;

-- This users_code below will skip N1 rows and take next N2 rows in **TABLE** usersLearn
It enables you to skip N1 rows and take next N2 rows
SELECT * 
FROM usersLearn 
ORDER BY users_id
OFFSET 50 ROWS FETCH NEXT 10 ROWS ONLY

-- This users_code below will use OFFSET without fetch to just skip first 50 rows in **TABLE** usersLearn
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
-- This users_code below will return records where data is greater than the conditions in the **TABLE** usersLearn
SELECT * 
FROM usersLearn
WHERE users_DOB > '2018-01-01';

-- This users_code below will return records where data is greater than the two conditions in the **TABLES** usersLearn1, usersLearn2
SELECT u1.id, u1.users_name, u2.users_name division, u1.salary
FROM usersLearn1 u1
INNER JOIN usersLearn2 u2
ON u1.div=u2.id
WHERE u1.sex='F' AND u1.salary>=50000.00

-- This users_code below will UPDATE records where data with the conditions is true in the **TABLE** usersLearn
UPDATE usersLearn
SET users_salary= 30000
WHERE users_salary<= 30000;

-- This users_code below will DELETE records where data with the conditions is true in the **TABLE** usersLearn
DELETE FROM usersLearn
WHERE users_age=302

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- LIKE CLAUSE QUERIES EXAMPLES
-- This users_code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn
WHERE users_comment LIKE 'w%'

-- This users_code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_email LIKE '%@gmail.com'

-- This users_code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_name LIKE '_a%'

-- This users_code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_name LIKE '[acl]%'

-- This users_code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_name LIKE '[a-l]%'

-- This users_code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_name LIKE '[^acl]%';

-- This users_code below will user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_name LIKE '[^a-l]%';

-- This users_code below will retrieve where the percentusers_age symbols at the beginning and end are wild cards for random pattern matching but the percentusers_age after ! 
user % to list customer comments from the usersLearn table which begin with the letter ‘w’.
SELECT * 
FROM usersLearn 
WHERE users_comment LIKE ('%15!%%') ESCAPE '!';

-- This users_code below will uses the NOT LIKE operator to return rows from the usersLearn table where the customer email id is not a gmail id.
FROM usersLearn 
WHERE users_email NOT LIKE '%gmail.com';

-- This users_code below will remove the customer comments for usersLearn having yahoo email ids.
UPDATE usersLearn 
SET users_comment=NULL 
WHERE users_email like '%yahoo%';

-- This users_code below will deletes records of usersLearn from the usersLearn table who have yahoo email ids.
DELETE 
FROM usersLearn 
WHERE users_email like '%yahoo%';


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- AND/OR/NOT CLAUSE QUERIES EXAMPLES
-- 
SELECT * 
FROM usersLearn
WHERE users_country='Germany' AND City='Berlin';

--
SELECT * 
FROM usersLearn
WHERE City='Berlin' OR City='München';

--
SELECT * 
FROM usersLearn
WHERE users_country='Germany' OR users_country='Spain';

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- IN CLAUSE QUERIES EXAMPLES
-- 
SELECT * FROM usersLearn
WHERE users_country IN ('Germany', 'France', 'UK');

--
SELECT * FROM usersLearn
WHERE users_country NOT IN ('Germany', 'France', 'UK');
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- GROUP BY CLAUSE QUERIES EXAMPLES
-- This users_code below will GROUP the records by users_locations, **TABLE** usersLearn
SELECT users_locations, count(users_id) 'no of users' 
FROM usersLearn 
GROUP BY users_locations;

-- This users_code below will GROUP the records by users_locations,users_code and ORDER BY users_locations, users_code from in the **TABLE** usersLearn
SELECT  users_code, 
        users_locations, 
        count(users_id) 'no of employees' 
FROM usersLearn
GROUP BY users_code, 
         users_locations
ORDER BY users_locations, 
         users_code;
/*
If you are specifying more columns in the select expression but not specified in the aggregate function then those column 
users_name should be mentioned in the GROUP BY clause
*/

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- HAVING CLAUSE QUERIES EXAMPLES
-- This users_code below will output users from the cities where the order size was more than 10 in the **TABLE** usersLearn
SELECT users_city, max(users_order) largest_order 
FROM usersLearn 
GROUP BY users_city 
HAVING max(users_order) > 10;

-- This users_code below will count is not equal to 5 using HAVING and outputs only those rows which satisfies the condition in the **TABLE** usersLearn
SELECT users_city, max(users_order) largest_order 
FROM usersLearn
GROUP BY users_city 
HAVING count(users_order) <> 5;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- ORDER BY CLAUSE QUERIES EXAMPLES
-- This users_code below will ORDER the records by users_age in ASCENDING ORDER, which is the default order **TABLE** usersLearn
SELECT  * 
FROM usersLearn 
ORDER BY users_age ASC;

-- This users_code below will ORDER the records by users_age in DESCENDING ORDER, **TABLE** usersLearn
SELECT  * 
FROM usersLearn 
ORDER BY users_age DESC;

-- This users_code below will ORDER the records by COLUMN 1 in ASCENDING ORDER and COLUMN  5 in DESCENDING ORDER in **TABLE** usersLearn
SELECT * 
FROM usersLearn
ORDER BY 1 ASC, 5 DESC;

-- This users_code below will ORDER the records by COLUMN 1 in ASCENDING ORDER and COLUMN  5 in DESCENDING ORDER in **TABLE** usersLearn
SELECT users_code, count(*)
FROM usersLearn
GROUP BY users_code;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- CASE CLAUSE QUERIES EXAMPLES
-- This users_code below will populate a new  **TABLE**, with all existing columns in usersLearn and produce usersLearn1
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
-- This users_code below will populate a new  **TABLE**, with all existing columns in usersLearn and produce usersLearn1
SELECT *
INTO usersLearn1
FROM usersLearn

-- This users_code below will populate a new  **TABLE**, with some specific existing columns in usersLearn and produce usersLearn1
SELECT users_name, gender, department
INTO usersLearn1
FROM usersLearn

-- This users_code below will populate an empty new  **TABLE**, with all existing columns in usersLearn and produce usersLearnEmpty
SELECT *
INTO usersLearnEmpty
FROM usersLearn
WHERE 1 = 0

-- This users_code below will create a new table from multiple **TABLES**, with all existing columns in usersLearn and produce usersLearnNew
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