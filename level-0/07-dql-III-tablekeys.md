## TABLE KEYS
All this queries are selcted as the most common types of queries

|S/N|ORDER OF WRITING|ORDER OF EXECUTION|
|--|---|-----|
|1|Select|From|
|2|Top|Where|
|3|Distinct|Group by|
|4|From|Having|
|5|Where|Select|
|6|Group by|Window|
|7|Having|QUALIFY|
|8|Order by|Distinct|
|9|Second|Order by|
|10|QUALIFY|Top|
|11|Limit|Limit|

<img align="right"  src="https://i.stack.imgur.com/6YuwE.jpg" width="400" height="300" />


### PRIMARY KEY
A PRIMARY KEY is the hallmark of a RDBMS. The PRIMARY KEY uniquely identifies every row in a table (called a tuple) and allows us to create relations between the different tables in a database making a DBMS relational.

A primary key is defined on a column in a table. Since a primary key uniquely identifies a tuple a primary key column cannot have NULL or duplicate values. Therefore, SQL automatically enforces the NOT NULL constraint on a PRIMARY KEY column even if it is not specified explicitly during table creation. SQL also does not allow entry of duplicate values in a primary key column and an attempt to do so fails with integrity constraint error.

It is also possible to designate more than one column (i.e. two or more columns) as the PRIMARY KEY.

- Example Code
CREATE TABLE departments (  dept_id TINYINT PRIMARY KEY,
                            dept_name VARCHAR(30)
                        );

- Example Code
CREATE TABLE employees(first_name VARCHAR(50),
                        last_name VARCHAR(50),
                        joining_date DATE,
                        designation VARCHAR(50),
                        salary MONEY,
                        CONSTRAINT table_pk PRIMARY KEY (first_name, last_name)
                    );

### FOREIGN KEY
A PRIMARY KEY uniquely identifies every row of information in a table (also called a record or tuple). The PRIMARY KEY of one table serves as the FOREIGN KEY of another table. The table to which the PRIMARY KEY originally belongs is called the parent table and the table which refers that PRIMARY KEY is called the child table. The link between the two tables is called a referential link and the purpose of establishing it is to enforce referential integrity.  

Since the PRIMARY KEY of the parent table becomes the FOREIGN KEY of the child table it follows that a FOREIGN KEY shares the same properties as a PRIMARY KEY (i.e. it can be single or multicolumn and it cannot have duplicate or NULL values). While defining the FOREIGN KEY in the child table we can define actions on the FOREIGN KEY column corresponding to actions on the column in the parent table. This is defined with the help of ON DELETE and ON UPDATE clauses which specify how to handle the data in the child table corresponding to data modifications in the parent table. There are 4 options available to control what action will be performed in the child table whenever data in the parent table is deleted or updated. They are the below:

- NO ACTION – SQL server throws an error and does not perform the requested action.
- CASCADE – SQL server replicates the change made in the parent table to the child table.
- SET DEFAULT – SQL server sets a default value (which must be predefined) in the child table for modifications made in the parent table.
- SET NULL – SQL server sets NULL value in the child table for modifications made in the parent table.

A FOREIGN KEY can be defined on a column or multiple columns in the child table while creating a table or later. It is also possible to drop the FOREIGN KEY in a table if not required.

- Example Code
CREATE TABLE employees( emp_id TINYINT IDENTITY(201,1) PRIMARY KEY,
                        dept_id TINYINT DEFAULT 100,
                        first_name VARCHAR(50),
                        last_name VARCHAR(50),
                        gender CHAR(1),
                        CONSTRAINT table_fk
                        FOREIGN KEY (dept_id)
                        REFERENCES departments(dept_id)
                    )
