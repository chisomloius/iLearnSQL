-- ## MATHEMATICS FUNCTIONS IN QUERY
There are different MATHEMATICS functions that can be used to query dataset with SQL.

/*
- OPERATORS FUNCTIONS
    - Arithmetic Operators
    - Bitwise Operators
    - Comparsion Operators
    - Logical Operators
    - Statement Operators
        - IF ELSE
        - WHILE LOOP
   
- AGGREGRATES FUNCTIONS
    - COUNT
    - MIN
    - MAX
    - SUM
    - MEAN
    - SQUARE
    - SQRT
    - POWER
    - FLOOR
    - ROUND
    - RANKING

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

-- TRUE if all of the subquery values meet the condition

-- Example of AND	

-- TRUE if all the conditions separated by AND is TRUE	

-- Example of ANY	

-- TRUE if any of the subquery values meet the condition

-- Example of BETWEEN	

-- TRUE if the operand is within the range of comparisons	

-- Example of EXISTS		

-- TRUE if the subquery returns one or more records

-- Example of IN	

-- TRUE if the operand is equal to one of a list of expressions

-- Example of LIKE		

-- TRUE if the operand matches a pattern

-- Example of NOT		

-- Displays a record if the condition(s) is NOT TRUE

-- Example of OR			

-- TRUE if any of the conditions separated by OR is TRUE

-- Example of SOME			
SELECT * FROM Products
WHERE Price > SOME (SELECT Price FROM Products WHERE Price > 20);
-- TRUE if any of the subquery values meet the condition


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
