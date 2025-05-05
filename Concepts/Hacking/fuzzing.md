(for web applications)
#### what can be fuzzed
- directories
- files and extensions
- hidden vhosts
- php parameters
- parameter values

### note
don't forget to include port
### wordlists and their uses
```
directory-list-2.3-small.txt: directories and files
web-extensions.txt: file extensions  
subdomains-top1million-5000.txt: subdomains  
burp-parameter-names.txt: parameters 
xato-net-10-million-usernames.txt: usernames
{maverick}/linux-cmd-injection.txt: cmd inj fuzzing
https://github.com/payloadbox/xss-payload-list: xss fuzzing
```
### good fuzzers
- ffuf
	- useful flags
	```
	-w: wordlist
	-u: url
	-recursion, -recursion-depth
	-e: fuzzer tries full list without extension and full list with extension
	-v: full url
	```
- gobuster

#### directories and files
- successful results are:
	- desired http code (ie. 200)
- fuzz at specific directory using 
	- assign wordlist to keyword (FUZZ)
	`-w directory-list-2.3-small.txt:FUZZ`
	- specify location of keyword (FUZZ)
	` -u http://SERVER_IP:PORT/FUZZ`
- fuzzing files/pages
	- different servers will use different file types (.php, .html), thus you need to fuzz for extensions
	- can use multiple lists as show below (`.` is a literal)
	`-w directory-list-2.3-small.txt:Fuzz1.Fuzz2`
- note: recursive fuzzing generates large wordlists, it's better to take found subdirectories and try fuzzing on them directly instead of using the recursion function
	
### Domain Fuzzing
- dns resolution
	- refers to /etc/hosts first then /etc/resolv.conf second. If the domain name is not in either it gives an error
- subdomain fuzzing (only identifies public subdomains)
	- use subdomains list
	- ` -u http://FUZZ.SERVER_IP:PORT`
- vhost fuzzing (can identify private subdomains)
	- url remains the parent url (just add a header)
	- use the `-H` flag to specify a header and will use the `FUZZ` keyword within it, as follows:
	`-H "host: FUZZ.domain.com"`
	- changes the host header to request the subdomain but the request is sent to the main domain name (GET, POST doesn't change)
	- however response code is expected to be a success regardless if subdomain exists, thus we need to use filtering
	- don't forget to leave out `.` when using subdomain wordlist
### filtering
- ffuf has many options to filter results
- `fs [size]` filters out content with specified length

### parameter fuzzing
- GET fuzzing:
`-u http://admin.academy.htb:PORT/admin/admin.php?FUZZ=key
- Post fuzzing:
`-X POST -d 'FUZZ=key'
	- 
- may need to fuzz values too