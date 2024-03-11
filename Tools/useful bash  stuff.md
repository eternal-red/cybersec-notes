
### bash common errors
- spaces matter in bash
	- you need to put spaces between bash syntax and parameters
	- ex: `if [ $var ]`
- operations
	- `==, <,>` are for strings
	- `-eq, -lt, -gt` is for numbers
- `*` are defined as some point so
	- `*$var* == $var2` has * as blank while `$var2 == *$var*` has wildcharacters
- there are only global variables, no local
- deugging
	- `-x` and `v` are used for debugging

#### special variables
#### file operators
#### return values 
#### common variables
- `${#variable}`: the variable length
### bash templates
to apply command to every file in a directory
```bash
for file in /dir/*
do
  cmd [option] "$file" >> results.out
done
```
to have multiple modes depending on input
```bash
read -p "Select your option: " opt
case $opt in
	"1") network_range ;;
	"2") ping_host ;;
	"3") network_range && ping_host ;;
	"*") exit 0 ;;
esac
```
