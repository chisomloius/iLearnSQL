-- ## DATA MANIPULATION LANGUAGE

/* They are generally known by this key word:

- INSERT
- UPDATE
- DELETE

Also known as the CRUD operators for developers.
*/
---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- INSERT SYNTAX EXAMPLES

-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn
CREATE TABLE usersLearn (     
    Id INT IDENTITY,     
    Description VARCHAR(1000)   
    )

-- This code below will ADD/INSERT a single record to a **TABLE**, usersLearn   
INSERT INTO usersLearn (Description) 
VALUES ('Hello World')

-- This code below will ADD/INSRT multiple records to a **TABLE**, usersLearn
INSERT INTO usersLearn (Description)
VALUES 
        ('Hello World'),
        ('Emergency World')
---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- UPDATE SYNTAX EXAMPLES

-- This code below will UPDATE a single record **TABLE**, usersLearn
UPDATE usersLearn 
SET Description = 'Hello, World!' 
WHERE Id = 1

-- This code below will UPDATE a single record from **TABLE2** into **Table1**
UPDATE Table1
SET column_list = (SELECT column_list FROM Table2 WHERE [condition])
WHERE [condition];

/*Table1 is the place for record update called destination , while Table2 is the source
for getting the record to be update
*/

-- This code below will UPDATE a multiple columns **TABLE**, usersLearn
UPDATE usersLearn
SET userTimer='Yoganandh ', userField='Wintel'
WHERE usersTower='Windows';

-- This code below will UPDATE single column, different values example in the **TABLE**, usersLearn
UPDATE usersLearn
SET resourceUsers=CASE
WHEN usersTower='Wintel' THEN 577
WHEN usersTower='Unix' THEN 164
END
WHERE usersTower IN ('Wintel', 'Unix');

-- This code below will use a SUBQUERY to **UPDATE** the records
UPDATE usersLearn
SET userTimer = (SELECT usersEarner FROM usersLearn2 WHERE usersLoads='Unix')
WHERE usersLoads='Unix';

/*
we can update a column in a record fetching the value from another table with a SELECT query. 
The following query is an example of the same where we update a value in the 
userTimer column of the employees table from the usersTower value in the towers table with the help of WHERE condition
*/

-- This code below will **UPDATE** all records
UPDATE usersLearn
SET userField='Permanent'
---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
-- DELETE SYNTAX EXAMPLES

-- This code below will REMOVE/DELETE a single record **TABLE**, usersLearn
DELETE FROM usersLearn
WHERE Id = 1

DELETE FROM usersLearn2
where Salary != 30000;
/*
This code will remove certain record based on a sinle condition
*/

-- This code below will DELETE Top 20% record from **TABLE**, usersLearn
DELETE TOP (20) PERCENT 
FROM usersLearn;


---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
