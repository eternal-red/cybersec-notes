```NOTE: ALWAYS USE THIS```
use "col -b <file>  newfile"
this will remove interpreted characters like 
^H: backspace (previous character deleted)
^M: carriage return

file and newfile must be different files

https://www.linuxquestions.org/questions/linux-general-1/saving-output-without-control-characters-743393/


## Grep 
- using * inside "" works for find but not grep
- C[num]: to see num lines before and after the pattern
- perm [###]: to find files with specific permissions
- grep for multiple patterns with ``` 'pattern 1|pattern 2'```


## File
-tells you the file format

## sort and uniq
-uniq only filters out identical lines if they are adjacent. 
-you can make them adjacent with sort


[[text manipulation, io, env]][[text editors]]