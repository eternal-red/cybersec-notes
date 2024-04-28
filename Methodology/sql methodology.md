- [ ] inspect source code for input/search fields that use sql if avaliable
## determine if sql injection is possible 
(use testing techniques)
- [ ] test all input fields
	- [ ] auth bypass tests
	- [ ] error based tests
	- [ ] time based tests
## post-poc tests
- [ ] database enumeration
	- [ ] enumerate information schemata
	- [ ] information to find
		- [ ] List of databases
		- [ ] List of tables within each database
		- [ ] List of columns within each table
- [ ] find information about current sql user
- [ ] try to change what user you are executing sql as

## testing techniques
- [ ] inject or operator
- [ ] use comments
- [ ] try different permutations of escape characters
- [ ] see if certain characters are blacklisted
- [ ] try encoding

### post-poc techniques
- [ ] union injections
	- [ ] find valid tables
	- [ ] match number of columns
	- [ ] use `order by`
## lists
[payload list](https://github.com/payloadbox/sql-injection-payload-list)
