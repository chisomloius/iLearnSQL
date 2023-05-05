-- ## MATHEMATICS FUNCTIONS IN QUERY

/*
There are different MATHEMATICS functions that can be used to query dataset with SQL.
- OPERATORS FUNCTIONS
    - Arithmetic Operators
    - Bitwise Operators
    - Comparsion Operators
    - Logical Operators
    - Statement Operators
        - IF 
        - IF ELSE
        - WHILE LOOP
   
- NUMERIC FUNCTIONS
    - COUNT
    - MIN
    - MAX
    - SUM
    - AVG
    - SQUARE
    - SQRT
    - POWER
    - FLOOR
    - ROUND
    - CEILING
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- ARITHEMTIC OPERATORS 
-- Example of Addition
SELECT (30 + 30) as Addition;

-- Example of Subtraction
SELECT (30 - 30) as Subtraction;

-- Example of Multiplication
SELECT (30 * 30) as Multiplication;

-- Example of Division
SELECT (30 / 30) as Division;

-- Example o
SELECT (30 % 30) as Modulus;


-- BITWISE FUNCTIONS 
-- Example of Bitwise AND
SELECT a_value & b_value 

-- Example of Bitwise OR
SELECT a_value | b_value 

-- Example of Bitwise exclusive OR
SELECT a_value ^ b_value 


-- COMPARISION FUNCTIONS 
-- Example of Equal to
SELECT * FROM usersLearn
WHERE age = 18;

-- Example of Not equal to
SELECT * FROM usersLearn
WHERE age <> 18;

-- Example of Greater than
SELECT * FROM usersLearn
WHERE age > 18;

-- Example of Less than
SELECT * FROM usersLearn
WHERE age < 18;

-- Example of Greater than or equal to
SELECT * FROM usersLearn
WHERE age >= 18;

-- Example of Less than or equal to
SELECT * FROM usersLearn
WHERE age <= 18;


-- LOGICAL FUNCTIONS 
-- Example of ALL	
SELECT userName 
FROM usersLearn
WHERE userId = ALL (
                    SELECT userId 
                    FROM userDetails 
                    WHERE Quantity = 10
                    );
-- TRUE if all of the subquery values meet the condition

-- Example of AND	
SELECT * 
FROM usersLearn
WHERE userCity = "London" AND userCountry = "UK";
-- TRUE if all the conditions separated by AND is TRUE	

-- Example of ANY	
SELECT userName 
FROM usersLearn
WHERE userId = ANY (
                    SELECT userPrice 
                    FROM userDetails
                    WHERE userPrice > 10
                    );
-- TRUE if any of the subquery values meet the condition

-- Example of BETWEEN	
SELECT * 
FROM usersLearn
WHERE userPrice BETWEEN 50 AND 60;
-- TRUE if the operand is within the range of comparisons	

-- Example of EXISTS		
SELECT userName
FROM usersLearn
WHERE EXISTS (
                SELECT visitorsName 
                FROM userLearnModified
                WHERE userLearnModified.userId = usersLearn.userId AND Price < 20);
-- TRUE if the subquery returns one or more records

-- Example of IN	
SELECT * 
FROM usersLearn
WHERE userCity IN ('Paris','London');
-- TRUE if the operand is equal to one of a list of expressions

-- Example of LIKE		
SELECT * 
FROM usersLearn
WHERE userCity LIKE 's%';
-- TRUE if the operand matches a pattern

-- Example of NOT		
SELECT * 
FROM usersLearn
WHERE userCity NOT LIKE 's%';;
-- Displays a record if the condition(s) is NOT TRUE

-- Example of OR			
SELECT * 
FROM Customers
WHERE City = "London" OR Country = "UK";
-- TRUE if any of the conditions separated by OR is TRUE

-- Example of SOME			
SELECT * 
FROM usersLearn
WHERE userPrice > SOME (
                    SELECT userPrice 
                    FROM usersLearn
                    WHERE userPrice > 20);
-- TRUE if any of the subquery values meet the condition



-- STATEMENT FUNCTIONS 
-- Example of IF (Single)	
IF ( i = 1)  -- Some Expression  
    BEGIN    
        PRINT 'One is equal to One'  
    END
-- Example of IF (Multiple)
IF (i = 1)  -- Some Expression  
    BEGIN     
        PRINT 'First IF is True'           -- this will be executed 
    END 

IF (i = 2)  -- Some Expression  
    BEGIN     
        PRINT 'First IF is True'           -- this will be executed 
    END 

IF (i = 3)  -- Some Expression  
    BEGIN     
        PRINT 'First IF is True'           -- this will be executed 
    END 

-- Example of IF ELSE	
IF (i = 1)  -- Some Expression  
    BEGIN     
        PRINT 'First IF is True'           -- this will be executed 
    END 
ELSE
    BEGIN
        PRINT 'First IF is not true'
    END
--

-- Example of WHILE LOOP
DECLARE @i int = 0;  
WHILE(@i < 100)  
    BEGIN     
        PRINT @i;     
        SET @i = @i+1  
    END
-- This will write a series of number from 1 to 100.

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- NUMERIC OPERATORS 
-- Example of COUNT
Select COUNT(userPrice) 
From usersLearn

-- Example of MIN
Select MIN(userPrice) 
From usersLearn

-- Example of MAX
Select MAX(userPrice) 
From usersLearn

-- Example of SUM
Select SUM(userPrice) 
From usersLearn

-- Example of AVG
Select AVG(userPrice) 
From usersLearn

-- Example of SQUARE
SELECT SQUARE(64);

-- Example of SQRT
SELECT SQRT(64);

-- Example of POWER
SELECT POWER(4, 2);

-- Example of FLOOR
SELECT FLOOR(20.75) AS FloorValue;

-- Example of ROUND
SELECT ROUND (25.7545, 2) AS RoundValueDefault;
/* returns 25.76 */

SELECT ROUND (250.7545, -2) AS RoundValueonInteger;
/* returns 300 */

-- Example of CEILING
SELECT CEILING(23.75) AS CeilValue;
/* returns 24 */

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
