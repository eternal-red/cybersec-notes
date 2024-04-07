### Methodology
- [ ] look for vulnerable functions in the front-end code
- [ ] attempt command injection
	- [ ] discover presence of filters
		- [ ] identify blacklisted commands and characters
		- [ ] bypass each

### Note
- command injection is targeted at the OS level of the full-stack and thus does not need to be modified for different front-end or web servers!
- to view html source code, use ctrl+u to open it as a full page
- you need to encode injections
	- online encoders will interpret `\n` as `\`+`n` not new-line
#### common commands
 ![[ci operators.png]]
- note `;` , \`\`, `$()` do not work on windows systems
- all these injections work under different conditions so test multiple of them if some fail
### discovery
-  look for functions used in the code that are exec, system, etc.
- input validation
	- sometimes input validation is done on front end and can be disabled
	- check if request is sent to server

### filter evasion
- detection
	- differently sized response  may be a sign of filters (like "invalid input" or other stuff) 
- bypassing client side filters
	- send normal request through burp then inject commands
- bypassing blacklisted character
	- alternatives to space
		- tab
		- {$IFS}
		- {(cmd),-(flag)} (brace expansion)
	- alternatives to `/`, `\`, `;`
		- try to pull characters from system variables
		- `echo ${PATH:0:1}`
	- windows cmdline
		- `echo %HOMEPATH:~6,-11%`
	- windows powershell
		- `Get-ChildItem Env`: lists all env vars
		- `$env:HOMEPATH[0]`: gets the character at the index
	- shift character `[`by 1 to be `\`
		- `echo $(tr '!-}' '"-~'<<<[)`
- bypassing blacklisted command
	- insert ignorable characters
		- `"`, \`
		- `w'h'o'am'i`
	- linux only keys: `\`, `$@`
	- windows only key: `^`
- command obfuscation
	- case manipulation 
		- linux
			- you need to convert the upper case to lower case, linux is case sensetive
			- `$(tr "[A-Z]" "[a-z]"<<<"WhOaMi")`

		- windows
			- can directly use a mix of upper and lower case (will be interpreted normally, windows isn't case sensitive)
			- `wHoAMi`
	- reversing commands
		- use `rev [cmd]` command and give it a cmd that is reversed
	- encode commands

### evasion tools (obfuscation)
- bashfuscator (linux)
- DOSfuscation (windows)


### signs of not being vulnerable
- input validation
- input sanitization
- no system commands