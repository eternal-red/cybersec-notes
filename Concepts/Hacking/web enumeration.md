### subdomain enumeration
- tools
	- gobuster
		- performs DNS, vhost, and directory brute-forcing (web)
		- list of http status codes https://en.wikipedia.org/wiki/List_of_HTTP_status_codes 
		- get more brute forcing lists from ```Seclist```
		- lists are located at ``/usr/share/dirb/wordlists/common.txt

	- ffuf
	- curl
		- retrive data from a server
			- (such as. banners)
	- eyewitness
		- take screenshots of discovered web pages, identify possible default creds
	- whatweb
		- discover all the technologies a website uses
		- discover version of web server or webapp
- other sources of information
	- SSL/TLS certificates
	- robots.txt
		- specifies which files it does not want the web engine to display in search results
	- source code
		- may have developer comments



cewl: create a custom wordlist of potential usernames and passwords based on the website

### sending web requests
Get requests
Post requests
Delete requests