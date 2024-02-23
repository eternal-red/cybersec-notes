### case studies 
- more and less can be used to gain an interactive terminal if your current permissions do not allow it.
	- make the window of your terminal small so more and less are forced into interactive mode, then you can open a shell
- you might be able to change the type of shell you have
	- $0: refers to the path of the users current shell
	- you can type in the name of a shell to try to change to it
	- cmds
		- ```VAR_NAME=var_value``` 
			- changes the shell
		- ``echo $VAR_NAME
			- shows the current value of the shell
		- env
			- prints all variable names in linux
- most linux commands are stored in the /bin folder

### privesc checklist
- privesc checklist https://book.hacktricks.xyz/linux-hardening/linux-privilege-escalation-checklist 
- partially automate the process with:
	- linux
		- linenum, linuxprivchecker
	- windows
		- seatbelt, jaws


### general process of priv esc
1. enumeration scripts: LINPEAS, PEASS
2. Kernel exploits (see if exploit exists for OS version)
3. Vulnerable software (see if exploit exists for any service version)
	1. look at all programs on device not just services
		1. `dpkg -l`
4. User Privs
	1. look for access to:
		1. 1. Sudo
		2. SUID
		3. Windows Token Privileges
5. Edit or Add scheduled tasks
	1. 1. Add new scheduled tasks/cron jobs
		1. locations of cronjobs:
			1.  `/etc/crontab`
			2. `/etc/cron.d`
			3. `/var/spool/cron/crontabs/root`
	2. Trick them to execute a malicious software
6. look for exposed credentials
	1. enumeration scripts
	2. look in bash history
7. grab ssh keys if available
8. if you have access to binaries try to priv esc using gtfo
		

### uploading and downloading files
- transfer file 
	- host a server with python and get file with wget or curl
	- use scp (if you can ssh)
- if you can't transfer file
	- use base64
		- encode the file as base64, copy it in the cmd line and paste it on the other device
		- pipe the output into a file ```shell-session
base64 -d > shell```    