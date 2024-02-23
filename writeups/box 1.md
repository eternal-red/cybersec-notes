#### enumeration
- find open ports and services and OS
	- ```nmap -sV -sC -O -T4 -n -Pn -oA fastscan <IP>```
	- ```nmap -sV -sC -T4 -Pn -p- -oA fullfastscan -vv <IP>```
	- ```nmap -sU -sV -sC -n -F -T4 <IP> -vv```

### ssh (OpenSSH 8.2p1)


### http (Apache httpd 2.4.41)
- getsimple software (3.3.16 maybe?) (3.3.15 prbly)
	 | php/webapps/51475.py

creds
admin: d033e22ae348aeb5660fc2140aec35850c4da997 (SHA1 (or SHA 128))
api ky 4f399dc72ff8e619e327800f851e9986


interesting pages
- http://10.129.136.3/admin/index.php   
	- login page, can't directly load


privesc attempts
- no readable ssh keys
- /usr/bin/php is executable
- 


takeaways
```
try default user:passwords
try to use crackstation to unhash passwords
read exploit files if you don't understand how the exploit works
if you access to binaries use gtfo to priv esc
```