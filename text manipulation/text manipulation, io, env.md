## Notes
```
### File descriptors
0: INPUT
1: OUTPUT
2: ERROR

### ignores output stream
/dev/null
```

### output redirection
- ```[command] > [file] ```: redirect output to file and replace anything existing in file
- ```[command] >> [file] ```: append to end of file
- ``` > [file] ```: replace file with anything typed into terminal & entered

### input redirection
- ```command < [file]```: used to send a file as input to the command when it normally takes input from the stdout

### stderr redirection
- ```ls /fake/directory 2> peanuts.txt```: redirects just stream 2
- ```ls /fake/directory > peanuts.txt 2>&1```: redirects stream 2 to where stream 1 goes
- ```ls /fake/directory &> peanuts.txt```: redirects stream 1 and 2 

### chaining cmds
- ```|```: lets you connect the output of previous commands to the next command
- ```tee```: let's you send the output to multiple places (ie. screen and file)

### env
- see current environment variables
	- ```echo $SHELL```: show specified environment variable
	- ```env```:  shows all environment variables
	- if you can't see one of your variables and it's from a downloaded package, you need to add the directory of that variable to your $PATH variable

### col 
- cannot take a file input normally
	- either use input redirection or pipe
	- ```col -b <file.txt> file2.txt```
	- ```cmd| col -b >file2.txt```

### helpful commands for text manipulation
- cut: extract columns of a file
- paste: combine multiple lines of a file
- head:  see first few lines of a file
- tail: see last few lines of a file
- expand/unexpand: convert tab char to spaces and vice versa
- join/split: combine multiple files into one
- sort: sorts lines
- tr: lets you offset all characters by a certain amount
- uniq: manipulate duplicates in a file
- wc/nl: wordcount/number of lines

### regex
- Well use this phrase for the following examples:
```
	sally sells seashells  
	by the seashore
```
**1. Beginning of a line with ^**
```
^by
  
would match the line "by the seashore"
  
```  
**2. End of a line with $**
```
seashore $
  
would match the line "by the seashore"
```
  
**3. Matching any single character with .**
```
b.
would match by
```

**4. Bracket notation with \[\]**
This can be a little tricky, brackets allow us to specify characters found within the bracket.
```
d[iou]g
would match: dig, dog, dug
```

The previous anchor tag ^ when used in a bracket means anything except the characters within the bracket.
```
d[^i]g
would match: dog and dug but not dig
```
Brackets can also use ranges to increase the amount of characters you want to use.
```
d[a-c]g
will match patterns like dag, dbg, and dcg
```
Be careful though as brackets are case sensitive:
```
d[A-C]g
will match dAg, dBg and dCg but not dag, dbg and dcg
```

