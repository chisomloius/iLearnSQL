-- DATA DEFINITION LANGUAGE (DDL)

/* 
Data Definition Language (DDL) commands are used to create, alter and drop objects definitons in a database.
We can use DDL within the following:

- A Database 
- A Table within a Database
- A View
- A Stored Procedure
- A Schema
- An Index

The most common DDL keywords are:
- "CREATE"
- "ALTER"
- "DROP"
- "TRUNCATE"
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- CREATE SYNTAX EXAMPLES

-- This code below will create a **Database**, iLearnDB
CREATE DATABASE iLearnDB;

-- This code below will create a **Table**, usersLearn, within a database, iLearnDB
CREATE TABLE usersLearn (
    column1 datatype constraint1,
    column2 datatype constraint2,
    column3 datatype constraint3,
    ...
    ...
);


-- This code below will create **Table** modifiedusersLearn using an existing Table usersLearn
CREATE TABLE modifiedusersLearn AS
SELECT column1, column2
FROM usersLearn;

/* 
This create a new table from the existing table, usersLearn and uses some of it columns
*/


-- This code below will create a **View** visitLogView
CREATE VIEW visitLogView 
AS  
    SELECT usl.ShippedDate, usl.OrderID, vil.Subtotal  
    FROM usersLearn AS usl  
    INNER JOIN viewersLearn AS vil
    ON usl.OrderID = vil.OrderID

/* 
This will join tables usersLearn and viewersLearn to display the columns ShippedDate, OrderID and Subtotal. 
Because table viewersLearn. If any of the table name has a blank in its name in the Northwind database, 
it must to be enclosed in square brackets
*/


-- this code below will create a **Procedure** visitLogProcedure, within a database, iLearnDB
CREATE PROCEDURE visitLogProcedure @OrderID int, @MinQty int=0 
AS BEGIN   
SELECT  ProductName, 
        UnitPrice=ROUND(Od.UnitPrice, 2),     
        Quantity,     
        Discount=CONVERT(int, Discount * 100),     
        ExtendedPrice=ROUND(CONVERT(money, 
        Quantity * (1 - Discount) * Od.UnitPrice), 2)   
FROM Products P, [Order Details] Od   
WHERE Od.ProductID = P.ProductID and 
      Od.OrderID = @OrderID  and 
      Od.Quantity>=@MinQty
END

-- To invoke the the procedure above
exec dbo.visitLogProcedure 10248

/*
It will return all order details with @OrderId=10248 (and quantity >=0 as default)
*/

-- To invoke the the procedure above with options
exec dbo.visitLogProcedure 10248 10

/*It will return all order details with @OrderId=10248 (and will return only orders with a minimum quantity of 10 (or more).
*/


-- this code below will create a **Schema** visitLogSchema (vls), within a database, iLearnDB
CREATE SCHEMA vls 
AUTHORIZATION Owner     
    CREATE TABLE visit_Sales (source int, cost int, partid int)     
    GRANT SELECT ON SCHEMA :: vls TO  User1     
    DENY SELECT ON SCHEMA :: vls to User2

/*
This code create a schema called vls and grant SELECT access to user1 but deny SELECT access to user2
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- ALTER SYNTAX EXAMPLES

-- This code below will alter a **Database**, iLearnDB to have multi-user
ALTER DATABASE iLearDB SET SINGLE_USER 
GO
    BEGIN TRANSACTION
        -- Generate an error.
        SELECT 1/0
    ROLLBACK TRANSACTION

GO
ALTER DATABASE iLearDB SET MULTI_USER 

/*
This code sets the db to single user mode. Then encounters an error, before returning to multi user mode
 */


-- This code below will alter a **Table**, usersLearn and add foreign key to it
ALTER TABLE usersLearn    
ADD  FOREIGN KEY (usersId) REFERENCES usersCompany(CompanyId)

/*
This code will add a foreign key constraints to the usersLearn Table by taking a from the usersCompany and
using the a specific column CompanyId
*/


-- This code will rename a **Table**, usersLearn to userslearn1
EXEC sp_rename 'usersLearn', 'usersLearn1'

/*
The sp_rename is a built-in stored procedure to modify a table name since SQL doesnt povide a direct means to rename tables
*/

-- This code will alter a **Table**, by adding an additional column
ALTER TABLE iLearDB.userStudents
ADD DoB DATE NOT NULL

/*
This code will alter a **Table** and add an additonal column called
DoB to the database, it will append it to the database meaning that it will be added as the last column
*/


-- This code will rename a **Table**, usersLearn to userslearn1
ALTER TABLE userStudents
ALTER COLUMN DoB VARCHAR(20)

/*
This code will alter a **Table** and change the datatype format to VARCHAR(20
*/


-- This code will rename a **Table**, usersLearn to userslearn1
ALTER TABLE userStudents
DROP COLUMN column_name_1

ALTER TABLE userStudents
DROP COLUMN column_name_1, column_name_2

/*
This code will alter a **Table** and drop the column_name_1 or 
drop multiple columns column_name_1, column_name_2, etc
*/


-- This code below will alter a **Schema**, visitLogSchema (vls) and transfer it
ALTER SCHEMA vls    
TRANSFER dbo.vls_Staging; 

/* 
This code alter the position of vls and transfer it to another database with the name vls_staging
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- DROP SYNTAX EXAMPLES

-- This code below will drop a **Database**, usersLearn and add foreign key to it
DROP DATABASE IF EXISTS iLearDB

/*
This code drops just one database iLearnDB
*/

DROP DATABASE IF EXISTS
[iLearDB, iLearDB2, iLearDB3];

/*
This code drop multiple databases iLearnDB, iLearnDB2, etc
*/


-- This code below will drop a **Table**, usersLearn and add foreign key to it
DROP TABLE iLearDB.department

/*
This code drop a single table department within the iLearnDB
*/
DROP TABLE iLearDB.employee, iLearDB.department;

/*
This code drop a multiple tables department within the iLearnDB
*/


-- This code below will drop a **View**, usersLearn and add foreign key to it
DROP PROCEDURE visitLogView

/*
This code drop a visitLogView within the iLearnDB
*/


-- This code below will drop a **Stored Procedure**, usersLearn and add foreign key to it
DROP PROCEDURE visitLogProcedure

/*
This code drop a visitLogProcedure within the iLearnDB
*/


-- This code below will drop a **Schema**, visitLogSchema (vls)
DROP TABLE vls.visit_Sales;
DROP SCHEMA vls
/*
This code wil first drop the table created within the schema and then drop the schema
/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- USING TSQL COMMAND OR CMD 

CREATE DATABASE [iLearnDB]  
    CONTAINMENT = NONE  
    ON  PRIMARY (NAME = N'iLearnDB',   
                FILENAME = N'C:\Program Files\SQL Server Management Studio\Data\iLearDB.mdf', 
                SIZE = 5120KB , 
                MAXSIZE = UNLIMITED, 
                FILEGROWTH = 1024KB)

    LOG ON  (NAME = N'iLearnDB_log',   
            FILENAME = N'C:\Program Files\SQL Server Management Studio\Data\iLearnDB_log.ldf',
            SIZE = 1536KB , 
            MAXSIZE = 2048GB , 
            FILEGROWTH = 10%  ) 
GO  ALTER DATABASE [Northwind] SET COMPATIBILITY_LEVEL = 110 
GO
