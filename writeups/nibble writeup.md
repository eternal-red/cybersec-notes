#### enumeration
- find open ports and services and OS
	- ```nmap -sV -sC -O -T4 -n -Pn -oA fastscan <IP>```
	- ```nmap -sV -sC -T4 -Pn -p- -oA fullfastscan -vv <IP>```
	- ```nmap -sU -sV -sC -n -F -T4 <IP> -vv```

#### ssh (version)
- find vulnerabilities with software

#### web server (Apache 2.4.18)
-  find all software
	- ```whatweb```
	- find vulnerabilities with software
- enumerate subdomains
	- ```nibbleblog```
	- enumerate `nibbleblog`
		- ```gobuster```



potential priv esc: CVE-2019-0211

upload directory:
http://10.129.5.123/nibbleblog/content/public/upload


look at crontab directory
3306 port open

files i can run
/home/nibbler/personal/stuff/monitor.sh (useful file)

read 
/etc/mysql/my.cnf (mysql config file)

ssh keys
/home/nibbler/.config/lxc/client.key (found nibbler key)

CVE-2019-7304

if you have a restricted shell
- vim doesn't work
- use echo to write to files, use cat to read files
