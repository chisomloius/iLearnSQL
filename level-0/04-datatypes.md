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
Note that isn't an exjhaustive lsit but rahter a compliation of the kind of datatypes find within the popular DBMS

|S.N|TYPE   |ALIAS  |
|---|---    |----   |
|1|int|NUMERIC|
|2|bigint|NUMERIC|
|3|smallint|NUMERIC|
|4|tinyint|NUMERIC|
|5|bit|NUMERIC|
|6|money|NUMERIC|
|7|smallmoney|NUMERIC|
|8|real|NUMERIC|
|9|float|NUMERIC|
|10|decimal|NUMERIC|
|11|serial|NUMERIC|
|12|smallserial|NUMERIC|
|13|bigserial|NUMERIC|
|14|decimal|NUMERIC|
|15|numeric|NUMERIC|
|16|char|STRING|
|17|varchar|STRING|
|18|nvarchar|STRING|
|19|boolean|STRING|
|20|byte hex|STRING|
|21|byte escape|STRING|
|22|tvector|STRING|
|23|tsquery|STRING|
|24|text|STRING|
|25|ntext|STRING|
|26|blob|STRING|
|27|binary|STRING|
|28|varbinary|STRING|
|30|nonbinary|STRING|
|31|date|DATE/DATETIME|
|32|time|DATE/DATETIME|
|33|datatime|DATE/DATETIME|
|34|datatimeF2|DATE/DATETIME|
|35|timestamp|DATE/DATETIME|
|36|datetimeoffset|DATE/DATETIME|
|37|smalldatetime|DATE/DATETIME|
|38|timezones|DATE/DATETIME|
|39|interval input|DATE/DATETIME|
|40|internal output|DATE/DATETIME|
|41|spatial types|OTHERS|
|42|uniqueidentifier|OTHERS|
|43|array|OTHERS|
|44|json|OTHERS|
|45|image|OTHERS|
|46|xml|OTHERS|
|47|cursor|OTHERS|
|48|composite|OTHERS|
|49|range|OTHERS|
|50|domain|OTHERS|


[Readmore here]()