- [ ] find anywhere input is uploaded (including GET parameters)
	- [ ] (mostly in source code) look for functions used in the code that are `exec, system, etc.`
- [ ] try fuzzing OS commands and see if there are errors or any rendering
- [ ] filter, sanitization evasion
	- [ ] bypass client side filters
	- [ ] bypass blacklists
	- [ ] bypass whitelists
	- [ ] breakup commands (insert ignorable characters)
	- [ ] case manipulation
	- [ ] encoding


### notes
- commands may need to be prepended with a expected input
- 