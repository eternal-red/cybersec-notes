


- server is written in bash
- can cat directories
- source code


$1 refers to the first parameter of a cmd unless in a script
ls cmd1
$1 refers to the first argument to the script
- abort "Invalid request line"


${1+x}




#### current plan
- get to the function that has that line
	- cause an abort error
- get `${1+x}` to be 0
- get to the line in script that is vulnerable to cmd injection
	- `echo -en $1`
- 