
## Service Enumeration
`A section to take notes on things you've researched and tried with your vulnerability scans (so you don't end up redoing work you already did).`

port 22

port 80
## Vulnerability Enumeration
`A section to take notes on which services you've investigated, failed exploitation attempts, promising vulnerabilities/misconfigurations, etc.`

## Web Enumeration

whatweb
```
http://10.129.68.175/ [200 OK] Apache[2.4.41], Bootstrap, Country[RESERVED][ZZ], Email[info@board.htb], HTML5, HTTPServer[Ubuntu Linux][Apache/2.4.41 (Ubuntu)], IP[10.129.68.175], JQuery[3.4.1], Script[text/javascript], X-UA-Compatible[IE=edge]
```

directories/files
- index.php: ==form==
	- form does not actually send data
- about.php 
- do.php
- contact.php: ==form==, ==query string==
	- form does not actually send data
