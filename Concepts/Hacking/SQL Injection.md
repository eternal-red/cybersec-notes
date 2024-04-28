## Notes
- ability to make SQL requests  and change tables from a database is dependent on user permissions
- `PRIMARY KEY`, which we can use to uniquely identify each record in the table,
- you prbly need to do some character escaping (prbly need an even amount of quotes)

## Basic Statements
- INSERT: `add new records`
- SELECT: `retrive data`
- DROP: `to remove tables and databases from the server`
- ALTER: `to change the name of any table and any of its fields or to delete or add a new column to an existing table`

## Useful add-ons
- ORDER BY: `specify column to sort by`
- LIMIT: `limit number of rows shown`
- WHERE: `used to limit results based on subrow info`
- LIKE: `limit results based on pattern`


## attack vectors
- any lookup/search filed
- sql syntax must be valid to execute

## types of attacks
- union based
	- add logical operators so statement always true (ie. or 1=1)
	- add comments to exclude code
	- use Union to read multiple databases
		- only work on columns that have same number of columns
		- bypass this by unionizing with strings equal to the number of columns
		- Unions join multiple tables by adding more rows
- error based
- time based
- boolean based


## attack notes
- @ refers to variables in sql
- use `.` to specify which database to use
	- (ie id.users)
- there are commands to get data about the user you are making sql requests as
	- (ie. select user_name())
	- `mysql.user` table
	- `load_file(<file>)` to read source code
- it is quite hard to write files to sql databases
	- you need a lot of perms
	- you may be able to make files (outfiles) and arbitrarily write to them