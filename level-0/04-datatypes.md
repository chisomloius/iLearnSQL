## SQL DATATYPES
Most databases have comprehensive documentation on the types they support, and this is a good resource for any needed detail beyond 
what is presented here. We are focused loosely on the datatypes and their variations.


### GENERAL CATERGORISATION OF DATA TYPES
Data types in SQL can be summarised as follows:

|S/N|TYPES|
|----|----|
|1|Exact Numerics|
|2|Approximate Numerics|
|3|Date or Datetime|
|4|Strings |
|5|Unicode Strings|
|6|Binary Strings|
|7|Others|

[Readmore MSSQL Dataypes here](https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16)
[Readmore MYSQL Dataypes here]()
[Readmore POSTGRESQL Dataypes here]()
[Readmore SQLITE Dataypes here]()


### EXAMPLES IN WRITTEN QUERIES

CREATE TABLE MyUniqueNames (     
                FirstName varchar(10),     
                LastName varchar(10),     
                CreateDate datetime default GETDATE()     
                PRIMARY KEY (FirstName,LastName) 
            )


### TABLES SUMMARY OF DATATYPES IN SQL

[Readmore here]()