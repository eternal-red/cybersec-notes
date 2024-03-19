Error 1:
```
Load key "id_rsa": error in libcrypto
```
Solution 1: The formatting of the ssh key is wrong. Try copying it again with VIM

Error 2:
```
./meterpreter.elf
Segmentation fault
```
Solution 2: use the stagless payload or actually send the second payload stage

Error 3:
```
unbind: command not found
bind-key: command not found
Command 'bind' not found
```
Solution 3: execute source .\<program\>.config inside program terminal, not bash/zsh terminal