-- DATA DEFINITION LANGUAGE (DDL)

/* 
Data Definition Language (DDL) commands are used to create:

- A Database 
- A Table within a Database
- A View
- A stored procedure

Also they are simple identify with the keyword "CREATE"
*/

-- SYNTAX EXAMPLES

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

-- This code below will create a **View** visitLogView

CREATE VIEW visitLogView 
AS  
    SELECT usl.ShippedDate, usl.OrderID, vil.Subtotal  
    FROM usersLearn AS usl  
    INNER JOIN viewersLearn AS vil
    ON usl.OrderID = vil.OrderID

/* This will join tables usersLearn and viewersLearn to display the columns ShippedDate, OrderID and Subtotal. 
Because table viewersLearn. If any of the table name has a blank in its name in the Northwind database, it must to be enclosed in square brackets
*/

-- this code below will create a **Procedure** visitLogProcedure, within a database, iLearnDB

CREATE PROCEDURE dbo.visitLogProcedure @OrderID int, @MinQty int=0 
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

/*It will return all order details with @OrderId=10248 (and quantity >=0 as default)*/

-- To invoke the the procedure above with options
exec dbo.visitLogProcedure 10248 10

/*It will return all order details with @OrderId=10248 (and will return only orders with a minimum quantity of 10 (or more).*/

-- USING TSQL COMMAND OR CMD 

CREATE DATABASE [iLearnDB]  
    CONTAINMENT = NONE  
    ON  PRIMARY (NAME = N'iLearnDB',   
                FILENAME = N'C:\Program Files\SQL Server Management Studio\Data\iLearn.mdf', 
                SIZE = 5120KB , 
                MAXSIZE = UNLIMITED, 
                FILEGROWTH = 1024KB)

    LOG ON  (NAME = N'iLearnDB_log',   
            FILENAME = N'C:\Program Files\SQL Server Management Studio\Data\iLearn_log.ldf',
            SIZE = 1536KB , 
            MAXSIZE = 2048GB , 
            FILEGROWTH = 10%  ) 
GO  ALTER DATABASE [Northwind] SET COMPATIBILITY_LEVEL = 110 
GO