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

- [Readmore MSSQL Dataypes here](https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16)

- [Readmore MYSQL Dataypes here](https://dev.mysql.com/doc/refman/8.0/en/data-types.html)

- [Readmore POSTGRESQL Dataypes here](https://www.postgresql.org/docs/current/datatype.html)

- [Readmore SQLITE Dataypes here](https://www.sqlite.org/datatype3.html)


### EXAMPLES IN WRITTEN QUERIES

CREATE TABLE MyUniqueNames (     
                FirstName varchar(10),     
                LastName varchar(10),     
                CreateDate datetime default GETDATE()     
                PRIMARY KEY (FirstName,LastName) 
            )


### TABLES SUMMARY OF DATATYPES IN SQL
|S.N|TYPE   |ALIAS  |
|---|---    |----   |
|1|bigint||
|2|int||
|3|decimal||
|4|||
|5|||
|6|||
|7|||
|8|||
|9|||
|10|||
|11|||
|12|||
|13|||
|14|||
|15|||
|16|||
|17|||
|18|||
|19|||
|20|||
|21|||
|22|||
|23|||
|24|||
|25|||
|26|||
|27|||
|28|||
|30|||
|31|||
|32|||
|33|||
|34|||
|35|||
|36|||
|37|||
|38|||
|39|||
|40|||
|41|||
|42|||
|43|||
|44|||
|45|||
|46|||
|47|||
|48|||
|49|||
|50|||


[Readmore here]()