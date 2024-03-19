```
foothold: rdp acess to device on subnet
- IP == 10.129.204.126
- Username == htb-student
- Password == HTB_@cademy_stdnt!
targets: 
- host1 (172.16.1.11:8080)
- host2 (blog.inlanefreight.local)
- host3 (172.16.1.13)
```

### vectors

- [ ] find ip of host2(in etc/hosts file)

### host1
- port 8080
	- subdomains
		- index.html (200)
			- nothing significant, no immediate upload
		- images (301)
		- Images (301)
	- software
		- Apache Tomcat 10.0.11
			- http://172.16.1.11:8080 [200 OK] Country[RESERVED][ZZ], HTML5, IP[172.16.1.11], Title[Apache Tomcat/10.0.11]
		- Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows
		- Windows Server 2019 Standard 6.3)
- port 80 website
	- http://172.16.1.11 [200 OK] Bootstrap, Country[RESERVED][ZZ], Email[info@example.com,info@inlanefreight.loca], HTML5, HTTPServer[Microsoft-IIS/10.0], IP[172.16.1.11], Microsoft-IIS[10.0], Script, Title[Inlanefreight], X-Powered-By[ASP.NET]

### websites
- 172.16.1.11  status.inlanefreight.local
	- upload portal
		- [ ] try uploading an aspx shell?
- 172.16.1.12  blog.inlanefreight.local
- 10.129.201.134  lab.inlanefreight.local




### takeaway
- metasploit parameters that are not required might still be required for a successful execution
- do a thorough enumeration of the website and all its subdirectories before giving up
- if you are exploiting a software, use a payload in the software's program, not a payload of the software's OS


new attempt
1. find passwords
	1. find pages 
		1. find all directories and subdomains with gobuster
		2. filter out lines with error code or are just directories
		3. find directories that are listable
	2. curl each page and see if any passwords exist
	3. add possible passwords to file
