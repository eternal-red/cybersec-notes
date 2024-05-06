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

## SQLMAP
- Note
	- there are many flags that give you specific control over certain aspects, look them up if you are not getting desired results
	- if you detect database is vulnerable but don't find any significant injections, you can specify enumeration flags
	- SQLMAP has code execution potential
	- ORDER OF FLAGS MATTER
- handeling input
	- copy curl command
		- just change curl to sqlmap
	- set automatic parameter finding (if you don't have any)
		- ie. crawl, forms
		- use `*` or `-p <param>` to tell sqlmap to only test specific parameter
	- can just specify a http request file with `-r <file>`
	- possible to test http headers too (use `*`)
- handeling output
	- `--parse-errors`: displays errors
	- `-t <file>` : stores output as a file
	- `--batch --dump` tries to access content of all available tables
- output descriptions and types
	- target is stable
		- `target URL content is stable`: this means website output does not change arbitrarily
	- parameter is dynamic
		- `GET parameter 'id' appears to be dynamic`: the tested parameter appears to be changing website content
- formatting of http files
	- no double new lines between headers
	- one newline between headers and body (for POST)
- bypassing security measures
	- `csrf-token`: lets you try to bypass this token 
	- `--parse-errors`: tells you what sqlmap is stuck on and maybe you can add a filter to bypass this

The list of techniques with its letters is as follows:
- B: Boolean-based blind
- E: Error-based
- U: Union query-based
- S: Stacked queries
- T: Time-based blind
- Q: Inline queries

#### problems
- specify table before database
- you will get valuable feedback at the end of a test with keyword `advised`
	- try to make test shorter to get this feedback if you don't get anything good


SQLMAP
- [ ] include as much info as you can for input
- [ ] increase level and risk if not getting desired results
- [ ] redefine true and false

