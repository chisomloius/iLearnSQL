-- ## TABLE FUNCTIONS IN QUERY
/*
- JOINS
A JOIN clause is used to combine rows from two or more tables, based on a related column between them. The common types are
    - INNER JOIN
    - LEFT JOIN
    - RIGHT JOIN
    - FULL JOIN
    - SELF JOIN
    - CROSS JOIN
    - SEMI JOIN
    - ANTI JOIN
*/
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-- JOIN QUERIES

-- Examples of INNER JOIN
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

-- Examples of LEFT JOIN
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

-- Examples of RIGHT JOIN
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

-- Examples of FULL JOIN
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
/*The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.*/

-- Examples of SELF JOIN
SELECT A.userName AS C1, B.userrName AS C2, A.userCity
FROM usersLearn AS A, usersLearn AS B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;
/*A self join is a regular join, but the table is joined with itself.*/

-- Examples of CROSS JOIN
SELECT column_list
FROM usersLearn1
CROSS JOIN usersLearn2;
/*This is like a join that gives a all possible combination of the two tables with duplicates and it doesnt have a join condition*/
-- Examples of SEMI JOIN
SELECT *
FROM usersLearn1 U1
WHERE EXISTS IN(
                SELECT 1
                FROM usersLearn2 U2
                WHERE U1.userId  = U2.userId
            )
ORDER BY U2.userId
/*
Semi-join is a type of join where the resulting table contains only the columns from the first table. 
It is similar to an inner joinw with two key differences:
- Only columns from Table 1 are returned (hence semi-join, meaning half)
- In the case of duplicates in Table 2, the inner join will return duplicates, whereas the semi-join will only return the first match.
*/
-- Examples of ANTI JOIN
-- Antin Join has no special syntax but can be found in the general form
SELECT *
FROM table1 t1
LEFT JOIN table2 t2
ON t1.Id = t2.Id
WHERE t2.Id IS NULL


