port and service scanning
- [ ] nmap scans
- [ ] enumerate specific services
- [ ] try to connect with nc to ports
- [ ] use firewall/ids evasion if not getting anything
- [ ] use [hacktricks](https://book.hacktricks.xyz/generic-methodologies-and-resources/pentesting-network)

priv esc
run linpeas
 look at hacktricks


#### ports and services


### web enumeration
```
change request headers 
- set cookies or api keys
```

#### priv esc
- [ ] run linpeas
do local checklist
- [ ] enumeration scripts: LINPEAS, PEASS
- [ ] Kernel exploits (see if exploit exists for OS version)
	Vulnerable software (see if exploit exists for any service version)
	- [ ] look at all programs on device not just services
		1. `dpkg -l`
- [ ] User Privs
	1. look for access to:
		1. 1. Sudo
		2. SUID
		3. Windows Token Privileges
- [ ] Edit or Add scheduled tasks
	1. Add new scheduled tasks/cron jobs
		1. locations of cronjobs:
			1.  `/etc/crontab`
			2. `/etc/cron.d`
			3. `/var/spool/cron/crontabs/root`
	2. Trick them to execute a malicious software
- [ ] look for exposed credentials
	1. enumeration scripts
	2. look in bash history
- [ ] grab ssh keys if available
- [ ] if you have access to binaries try to priv esc using gtfo




When considering what payload to make for a Unix/Linux system, we will benefit from considering the following:

    What distribution of Linux is the system running?

    What shell & programming languages exist on the system?

    What function is the system serving for the network environment it       is on?

    What application is the system hosting?

    Are there any known vulnerabilities?
